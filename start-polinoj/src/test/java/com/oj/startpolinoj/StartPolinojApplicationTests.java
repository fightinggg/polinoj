package com.oj.startpolinoj;

import com.oj.commonpolinoj.dto.ProblemDTO;
import com.oj.salpolinoj.service.HduOjSalService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.*;

@SpringBootTest
class StartPolinojApplicationTests {

    @Autowired
    HduOjSalService hduOjSalService;

    @Test
    void contextLoads() {
        String code = "#include<bits/stdc++.h>\n" +
                "using namespace std;\n" +
                "/*\n" +
                "//如果没有特殊要求，尽量选择合适的自动机，要算好内存\n" +
                "typedef map<int,int>::iterator IT;\n" +
                "struct SAM{//下标从1开始，0作为保留位，用于做哨兵\n" +
                "    static const int MAXN=1e6+10;\n" +
                "    int cnt,last,par[MAXN<<1],len[MAXN<<1];\n" +
                "    map<int,int>trans[MAXN<<1];//map用于字符集特别大的时候，注意这里占内存可能会特别大\n" +
                "\n" +
                "    \n" +
                "    int newnode(int parent,int length){\n" +
                "        par[++cnt]=parent;\n" +
                "        len[cnt]=length;\n" +
                "        trans[cnt].clear();\n" +
                "        return cnt;\n" +
                "    }\n" +
                "    void ini(){\n" +
                "        cnt=0;\n" +
                "        last=newnode(0,0);\n" +
                "    }\n" +
                "    \n" +
                "    void extend(int c){\n" +
                "        int p=last;\n" +
                "        int np=newnode(1,len[last]+1);//新建状态，先让parent指向根（1）\n" +
                "        while(p!=0&&trans[p].find(c)==trans[p].end()){//如果没有边，且不为空，根也是要转移的\n" +
                "            trans[p][c]=np;//他们都没有向np转移的边，直接连过去\n" +
                "            p=par[p];//往parent走\n" +
                "        }\n" +
                "        if(p!=0){//如果p==0，直接就结束了，什么都不用做，否则节点p是第一个拥有转移c的状态，他的祖先都有转移c\n" +
                "            int q=trans[p][c];//q是p转移后的状态\n" +
                "            if(len[q]==len[p]+1)par[np]=q;//len[q]是以前的最长串，len[p]+1是合并后的最长串，相等的话，不会影响，直接结束了，\n" +
                "            else{\n" +
                "                int nq=newnode(par[q],len[p]+1);\n" +
                "                trans[nq]=trans[q];//copy出q来，\n" +
                "                par[np]=par[q]=nq;//改变parent树的形态\n" +
                "                while(trans[p][c]==q){//一直往上面走\n" +
                "                    trans[p][c]=nq;//所有向q连边的状态都连向nq\n" +
                "                    p=par[p];\n" +
                "                }\n" +
                "            }\n" +
                "        }\n" +
                "        last=np;//最后的那个节点\n" +
                "    }//SAM到此结束\n" +
                "    \n" +
                "    int count_all_substring(){//本质不同的串,不必调用拓扑排序\n" +
                "        int ret=0;\n" +
                "        for(int i=2;i<=cnt;i++){//不必计算根，因为根太特殊了，它代表的是空串，\n" +
                "            ret+=len[i]-len[par[i]];//每个节点存的串都是唯一的right集合，所以对所有状态求和即可\n" +
                "        }\n" +
                "        return ret;\n" +
                "    }\n" +
                "    \n" +
                "    int bfn[MAXN<<1],bfn__[MAXN<<1];//辅助数组,辅助数组用过以后会自动复原的，很神奇，也很好证明\n" +
                "    void sort(){//拓扑排序,利用len的特性，len小的肯定是子孙，相同的顶多是兄弟，大的肯定是祖先级别的，\n" +
                "        for(int i=1;i<=cnt;i++)bfn__[len[i]]++;//len的值分布于1到n，对此计数\n" +
                "        for(int i=1;i<=cnt;i++)bfn__[i]+=bfn__[i-1];//统计前缀和\n" +
                "        for(int i=1;i<=cnt;i++)bfn[bfn__[len[i]]--]=i;//bfn[i]是排名为i的节点的编号，i从1开始\n" +
                "    }\n" +
                "    \n" +
                "    int right[MAXN<<1];//right集合的大小\n" +
                "    void get_right(){//先调用sort得到拓扑序，然后再来这里\n" +
                "        for(int i=bfn[cnt];i!=0;i=par[i])right[i]=1;\n" +
                "        for(int i=cnt;i>=2;i--){//1号节点为根，其实不需要\n" +
                "            int j=bfn[i];\n" +
                "            for(IT it=trans[j].begin();it!=trans[j].end();it++){\n" +
                "                right[j]+=right[it->second];\n" +
                "            }\n" +
                "        }\n" +
                "    }\n" +
                "};\n" +
                "\n" +
                "*/\n" +
                "vector<map<int,int>>vec;\n" +
                "\n" +
                "int main(){\n" +
                "    int a,b;\n" +
                "    while(cin>>a>>b){\n" +
                "        cout<<a+b<<endl;\n" +
                "    }\n" +
                "    for(int i=0;i<20000;i++){\n" +
                "        map<int,int>mp;\n" +
                "        mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;\n" +
                "        vec.push_back(mp);\n" +
                "    }\n" +
                "}";
        System.out.println(hduOjSalService.submitCode(code, "1000"));
    }

    private void download(String id) {
        String fileName = "hdu/" + id + ".json";
        File file = new File(fileName);
        if (file.exists()) {
            // return;
        }
        ProblemDTO problemDTO = hduOjSalService.getProblem(id);
        if (problemDTO == null) {
            throw new RuntimeException("null");
        }

        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileName);
            //fileOutputStream.write(problem.getBytes());
            fileOutputStream.close();
        } catch (IOException e) {
            System.out.println(id + " " + problemDTO);
            file.delete();
            throw new RuntimeException(e);
        }
    }


    @Test
    void copyProblem() throws InterruptedException, ExecutionException {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(50, 50,
                10, TimeUnit.SECONDS, new LinkedBlockingDeque<>(),
                new ThreadPoolExecutor.CallerRunsPolicy());
        List<Future> futures = new ArrayList<>();
        for (int i = 1000; i < 5000; i++) {
            int finalI = i;
            Future<?> submit = threadPoolExecutor.submit(() -> download(String.valueOf(finalI)));
            futures.add(submit);
        }
        for (Future future : futures) {
            future.get();
        }
    }
}
