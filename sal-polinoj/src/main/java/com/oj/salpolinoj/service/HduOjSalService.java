package com.oj.salpolinoj.service;

import com.github.houbb.html2md.util.Html2MdHelper;
import com.oj.salpolinoj.service.pojo.HduProblemDTO;
import com.oj.salpolinoj.service.pojo.HduSampleDTO;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Component
public class HduSalService {
    public HduProblemDTO copyProblem(String id) {

            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            Request request = new Request.Builder()
                    .url("http://acm.hdu.edu.cn/showproblem.php?pid=" + id)
                    .method("GET", null)
                    .build();
        try (Response response = client.newCall(request).execute()){
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

            HduProblemDTO hduProblemDTO = new HduProblemDTO();
            hduProblemDTO.setHduSampleDTOList(new ArrayList<>());

            final HduSampleDTO[] hduSampleDTO = new HduSampleDTO[1];
            panelContent.stream()
                    .forEach(o -> {
                        String k = o[0];
                        String v = o[1];
                        String raw = o[2];

                        switch (k) {
                            case "Problem Description":
                                hduProblemDTO.setDescription(v);
                                break;
                            case "Input":
                                hduProblemDTO.setInput(v);
                                break;
                            case "Output":
                                hduProblemDTO.setOutput(v);
                                break;
                            case "Sample Input":
                                if (hduSampleDTO[0] != null) {
                                    throw new RuntimeException("e");
                                }
                                hduSampleDTO[0] = new HduSampleDTO();
                                hduSampleDTO[0].setInput(raw);
                                break;
                            case "Sample Output":
                                if (hduSampleDTO[0] == null) {
                                    hduSampleDTO[0] = new HduSampleDTO();
                                }
                                hduSampleDTO[0].setOutput(raw);
                                hduProblemDTO.getHduSampleDTOList().add(hduSampleDTO[0]);
                                hduSampleDTO[0] = null;
                                break;
                            case "Author":
                                hduProblemDTO.setAuthor(v);
                                break;
                            case "Source":
                                hduProblemDTO.setSource(v);
                                break;

                        }
                    });

            return hduProblemDTO;
        } catch (Exception e) {
            log.error("submit to hdu failed ", e);
            return null;
        }
    }


    public String submitCode(String code, String id) {
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
            return response.body().string();
        } catch (Exception e) {
            log.error("submit to hdu failed ", e);
            return null;
        }
    }
}
