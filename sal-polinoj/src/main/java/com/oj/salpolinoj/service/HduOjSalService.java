package com.oj.salpolinoj.service;

import com.github.houbb.html2md.util.Html2MdHelper;
import com.oj.commonpolinoj.dto.ProblemDTO;
import com.oj.commonpolinoj.dto.SampleDTO;
import com.oj.commonpolinoj.dto.SubmitResultDTO;
import com.oj.commonpolinoj.enums.OjName;
import com.oj.commonpolinoj.enums.SubmitStatus;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Component
public class HduOjSalService {
    public ProblemDTO getProblem(String id) {

        OkHttpClient client = new OkHttpClient().newBuilder()
                .build();
        Request request = new Request.Builder()
                .url("http://acm.hdu.edu.cn/showproblem.php?pid=" + id)
                .method("GET", null)
                .build();
        try (Response response = client.newCall(request).execute()) {
            String html = response.body().string();
            Document document = Jsoup.parse(html);

            List<String[]> panelContent = document.getElementsByClass("panel_title")
                    .stream()
                    .map(o -> {
                        String k = Html2MdHelper.convert(o.html());
                        String v = Html2MdHelper.convert(o.nextElementSibling().html());
                        //System.out.println(k + " " + v);
                        return new String[]{k, v, o.nextElementSibling().html()};
                    })
                    .collect(Collectors.toList());

            ProblemDTO problemDTO = new ProblemDTO();
            problemDTO.setSampleDTOList(new ArrayList<>());


            // title
            String title = document.body().child(1).child(0).child(3).child(0).child(0).text();
            problemDTO.setTitle(title);

            final SampleDTO[] sampleDTO = new SampleDTO[1];
            panelContent.stream()
                    .forEach(o -> {
                        String k = o[0];
                        String v = o[1];
                        String raw = o[2];

                        switch (k) {
                            case "Problem Description":
                                problemDTO.setDescription(v);
                                break;
                            case "Input":
                                problemDTO.setInput(v);
                                break;
                            case "Output":
                                problemDTO.setOutput(v);
                                break;
                            case "Sample Input":
                                if (sampleDTO[0] != null) {
                                    throw new RuntimeException("e");
                                }
                                sampleDTO[0] = new SampleDTO();
                                sampleDTO[0].setInput(raw);
                                break;
                            case "Sample Output":
                                if (sampleDTO[0] == null) {
                                    sampleDTO[0] = new SampleDTO();
                                }
                                sampleDTO[0].setOutput(raw);
                                problemDTO.getSampleDTOList().add(sampleDTO[0]);
                                sampleDTO[0] = null;
                                break;
                            case "Author":
                                problemDTO.setAuthor(v);
                                break;
                            case "Source":
                                problemDTO.setSource(v);
                                break;

                        }
                    });


            if (problemDTO.getSource() == null) {
                problemDTO.setSource(OjName.HDU_NAME);
            }

            if(problemDTO.getSourceId()==null){
                problemDTO.setSourceId(id);
            }

            return problemDTO;
        } catch (Exception e) {
            log.error("submit to hdu failed ", e);
            return null;
        }
    }


    public Boolean submitCode(String code, String id) {
        try {
            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            MediaType mediaType = MediaType.parse("text/plain");
            RequestBody body = new MultipartBody.Builder().setType(MultipartBody.FORM)
                    .addFormDataPart("check", " 0")
                    .addFormDataPart("_usercode", new String(Base64.getEncoder().encode(code.getBytes())))
                    .addFormDataPart("problemid", id)
                    .addFormDataPart("language", " 0")
                    .build();
            Request request = new Request.Builder()
                    .url("http://acm.hdu.edu.cn/submit.php?action=submit")
                    .method("POST", body)
                    .addHeader("Cookie", "PHPSESSID=cg7u6itif0p3402mbh6bsjc9a1; exesubmitlang=0")
                    .build();
            Response response = client.newCall(request).execute();
            log.info("submitCode result: {}", response.body().string());
            return true;
        } catch (Exception e) {
            log.error("submit to hdu failed ", e);
            return null;
        }
    }

    public List<SubmitResultDTO> getProblemSubmitResult(String problemId) {
        try {
            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            Request request = new Request.Builder()
                    .url("http://acm.hdu.edu.cn/status.php?first=&pid=" + problemId + "&user=&lang=0&status=0")
                    .method("GET", null)
                    .addHeader("Cookie", "PHPSESSID=cg7u6itif0p3402mbh6bsjc9a1; exesubmitlang=0")
                    .build();
            try (Response response = client.newCall(request).execute()) {
                String html = response.body().string();
                Document document = Jsoup.parse(html);
                Elements table = document.getElementsByClass("table_text").get(0).child(0).children();
                // Run ID	Submit Time	Judge Status	Pro.ID	Exe.Time	Exe.Memory	Code Len.	Language	Author
                return table.subList(2, table.size())
                        .stream()
                        .map(o -> {
                            Elements children = o.children();
                            SubmitResultDTO submitResultDTO = new SubmitResultDTO();
                            submitResultDTO.setSubmitTime(children.get(1).html());

                            String status = Html2MdHelper.convert(children.get(2).html());
                            submitResultDTO.setStatus(SubmitStatus.converter(status).getTxt());
                            submitResultDTO.setProblemId(Html2MdHelper.convert(children.get(3).text()));
                            submitResultDTO.setExecTime(children.get(4).html());
                            submitResultDTO.setExecMemory(children.get(5).html());
                            submitResultDTO.setUser(children.get(8).text());
                            submitResultDTO.setProblemSource("hdu");
                            return submitResultDTO;
                        })
                        .collect(Collectors.toList());
            }
        } catch (Exception e) {
            log.error("getResult from hdu failed ", e);
            return null;
        }
    }
}
