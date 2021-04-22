create table submit
(
    id               bigint auto_increment
        primary key,
    problem_id       bigint       not null,
    source_submit_id varchar(255) null,
    code             text         null,
    user_id          bigint       null,
    status           int          null,
    exec_time        bigint       null,
    exec_memory      bigint       null,
    constraint submit_source_submit_id_uindex
        unique (source_submit_id)
);

INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory) VALUES (14, 17, '35808931', '#include<bits/stdc++.h>
using namespace std;
/*
//如果没有特殊要求，尽量选择合适的自动机，要算好内存
typedef map<int,int>::iterator IT;
struct SAM{//下标从1开始，0作为保留位，用于做哨兵
    static const int MAXN=1e6+10;
    int cnt,last,par[MAXN<<1],len[MAXN<<1];
    map<int,int>trans[MAXN<<1];//map用于字符集特别大的时候，注意这里占内存可能会特别大

    
    int newnode(int parent,int length){
        par[++cnt]=parent;
        len[cnt]=length;
        trans[cnt].clear();
        return cnt;
    }
    void ini(){
        cnt=0;
        last=newnode(0,0);
    }
    
    void extend(int c){
        int p=last;
        int np=newnode(1,len[last]+1);//新建状态，先让parent指向根（1）
        while(p!=0&&trans[p].find(c)==trans[p].end()){//如果没有边，且不为空，根也是要转移的
            trans[p][c]=np;//他们都没有向np转移的边，直接连过去
            p=par[p];//往parent走
        }
        if(p!=0){//如果p==0，直接就结束了，什么都不用做，否则节点p是第一个拥有转移c的状态，他的祖先都有转移c
            int q=trans[p][c];//q是p转移后的状态
            if(len[q]==len[p]+1)par[np]=q;//len[q]是以前的最长串，len[p]+1是合并后的最长串，相等的话，不会影响，直接结束了，
            else{
                int nq=newnode(par[q],len[p]+1);
                trans[nq]=trans[q];//copy出q来，
                par[np]=par[q]=nq;//改变parent树的形态
                while(trans[p][c]==q){//一直往上面走
                    trans[p][c]=nq;//所有向q连边的状态都连向nq
                    p=par[p];
                }
            }
        }
        last=np;//最后的那个节点
    }//SAM到此结束
    
    int count_all_substring(){//本质不同的串,不必调用拓扑排序
        int ret=0;
        for(int i=2;i<=cnt;i++){//不必计算根，因为根太特殊了，它代表的是空串，
            ret+=len[i]-len[par[i]];//每个节点存的串都是唯一的right集合，所以对所有状态求和即可
        }
        return ret;
    }
    
    int bfn[MAXN<<1],bfn__[MAXN<<1];//辅助数组,辅助数组用过以后会自动复原的，很神奇，也很好证明
    void sort(){//拓扑排序,利用len的特性，len小的肯定是子孙，相同的顶多是兄弟，大的肯定是祖先级别的，
        for(int i=1;i<=cnt;i++)bfn__[len[i]]++;//len的值分布于1到n，对此计数
        for(int i=1;i<=cnt;i++)bfn__[i]+=bfn__[i-1];//统计前缀和
        for(int i=1;i<=cnt;i++)bfn[bfn__[len[i]]--]=i;//bfn[i]是排名为i的节点的编号，i从1开始
    }
    
    int right[MAXN<<1];//right集合的大小
    void get_right(){//先调用sort得到拓扑序，然后再来这里
        for(int i=bfn[cnt];i!=0;i=par[i])right[i]=1;
        for(int i=cnt;i>=2;i--){//1号节点为根，其实不需要
            int j=bfn[i];
            for(IT it=trans[j].begin();it!=trans[j].end();it++){
                right[j]+=right[it->second];
            }
        }
    }
};

*/
vector<map<int,int>>vec;

int main(){
    int a,b;
    while(cin>>a>>b){
        cout<<a+b<<endl;
    }
    for(int i=0;i<20000;i++){
        map<int,int>mp;
        mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;
        vec.push_back(mp);
    }
}', 1, 6, 0, 0);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory) VALUES (15, 17, '35809009', '#include<bits/stdc++.h>
using namespace std;
/*
//如果没有特殊要求，尽量选择合适的自动机，要算好内存
typedef map<int,int>::iterator IT;
struct SAM{//下标从1开始，0作为保留位，用于做哨兵
    static const int MAXN=1e6+10;
    int cnt,last,par[MAXN<<1],len[MAXN<<1];
    map<int,int>trans[MAXN<<1];//map用于字符集特别大的时候，注意这里占内存可能会特别大

    
    int newnode(int parent,int length){
        par[++cnt]=parent;
        len[cnt]=length;
        trans[cnt].clear();
        return cnt;
    }
    void ini(){
        cnt=0;
        last=newnode(0,0);
    }
    
    void extend(int c){
        int p=last;
        int np=newnode(1,len[last]+1);//新建状态，先让parent指向根（1）
        while(p!=0&&trans[p].find(c)==trans[p].end()){//如果没有边，且不为空，根也是要转移的
            trans[p][c]=np;//他们都没有向np转移的边，直接连过去
            p=par[p];//往parent走
        }
        if(p!=0){//如果p==0，直接就结束了，什么都不用做，否则节点p是第一个拥有转移c的状态，他的祖先都有转移c
            int q=trans[p][c];//q是p转移后的状态
            if(len[q]==len[p]+1)par[np]=q;//len[q]是以前的最长串，len[p]+1是合并后的最长串，相等的话，不会影响，直接结束了，
            else{
                int nq=newnode(par[q],len[p]+1);
                trans[nq]=trans[q];//copy出q来，
                par[np]=par[q]=nq;//改变parent树的形态
                while(trans[p][c]==q){//一直往上面走
                    trans[p][c]=nq;//所有向q连边的状态都连向nq
                    p=par[p];
                }
            }
        }
        last=np;//最后的那个节点
    }//SAM到此结束
    
    int count_all_substring(){//本质不同的串,不必调用拓扑排序
        int ret=0;
        for(int i=2;i<=cnt;i++){//不必计算根，因为根太特殊了，它代表的是空串，
            ret+=len[i]-len[par[i]];//每个节点存的串都是唯一的right集合，所以对所有状态求和即可
        }
        return ret;
    }
    
    int bfn[MAXN<<1],bfn__[MAXN<<1];//辅助数组,辅助数组用过以后会自动复原的，很神奇，也很好证明
    void sort(){//拓扑排序,利用len的特性，len小的肯定是子孙，相同的顶多是兄弟，大的肯定是祖先级别的，
        for(int i=1;i<=cnt;i++)bfn__[len[i]]++;//len的值分布于1到n，对此计数
        for(int i=1;i<=cnt;i++)bfn__[i]+=bfn__[i-1];//统计前缀和
        for(int i=1;i<=cnt;i++)bfn[bfn__[len[i]]--]=i;//bfn[i]是排名为i的节点的编号，i从1开始
    }
    
    int right[MAXN<<1];//right集合的大小
    void get_right(){//先调用sort得到拓扑序，然后再来这里
        for(int i=bfn[cnt];i!=0;i=par[i])right[i]=1;
        for(int i=cnt;i>=2;i--){//1号节点为根，其实不需要
            int j=bfn[i];
            for(IT it=trans[j].begin();it!=trans[j].end();it++){
                right[j]+=right[it->second];
            }
        }
    }
};

*/
vector<map<int,int>>vec;

int main(){
    int a,b;
    while(cin>>a>>b){
        cout<<a+b<<endl;
    }
    for(int i=0;i<20000;i++){
        map<int,int>mp;
        mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;
        vec.push_back(mp);
    }
}', 1, 6, 0, 0);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory) VALUES (16, 17, '35809036', '#include<bits/stdc++.h>
using namespace std;
/*
//如果没有特殊要求，尽量选择合适的自动机，要算好内存
typedef map<int,int>::iterator IT;
struct SAM{//下标从1开始，0作为保留位，用于做哨兵
    static const int MAXN=1e6+10;
    int cnt,last,par[MAXN<<1],len[MAXN<<1];
    map<int,int>trans[MAXN<<1];//map用于字符集特别大的时候，注意这里占内存可能会特别大

    
    int newnode(int parent,int length){
        par[++cnt]=parent;
        len[cnt]=length;
        trans[cnt].clear();
        return cnt;
    }
    void ini(){
        cnt=0;
        last=newnode(0,0);
    }
    
    void extend(int c){
        int p=last;
        int np=newnode(1,len[last]+1);//新建状态，先让parent指向根（1）
        while(p!=0&&trans[p].find(c)==trans[p].end()){//如果没有边，且不为空，根也是要转移的
            trans[p][c]=np;//他们都没有向np转移的边，直接连过去
            p=par[p];//往parent走
        }
        if(p!=0){//如果p==0，直接就结束了，什么都不用做，否则节点p是第一个拥有转移c的状态，他的祖先都有转移c
            int q=trans[p][c];//q是p转移后的状态
            if(len[q]==len[p]+1)par[np]=q;//len[q]是以前的最长串，len[p]+1是合并后的最长串，相等的话，不会影响，直接结束了，
            else{
                int nq=newnode(par[q],len[p]+1);
                trans[nq]=trans[q];//copy出q来，
                par[np]=par[q]=nq;//改变parent树的形态
                while(trans[p][c]==q){//一直往上面走
                    trans[p][c]=nq;//所有向q连边的状态都连向nq
                    p=par[p];
                }
            }
        }
        last=np;//最后的那个节点
    }//SAM到此结束
    
    int count_all_substring(){//本质不同的串,不必调用拓扑排序
        int ret=0;
        for(int i=2;i<=cnt;i++){//不必计算根，因为根太特殊了，它代表的是空串，
            ret+=len[i]-len[par[i]];//每个节点存的串都是唯一的right集合，所以对所有状态求和即可
        }
        return ret;
    }
    
    int bfn[MAXN<<1],bfn__[MAXN<<1];//辅助数组,辅助数组用过以后会自动复原的，很神奇，也很好证明
    void sort(){//拓扑排序,利用len的特性，len小的肯定是子孙，相同的顶多是兄弟，大的肯定是祖先级别的，
        for(int i=1;i<=cnt;i++)bfn__[len[i]]++;//len的值分布于1到n，对此计数
        for(int i=1;i<=cnt;i++)bfn__[i]+=bfn__[i-1];//统计前缀和
        for(int i=1;i<=cnt;i++)bfn[bfn__[len[i]]--]=i;//bfn[i]是排名为i的节点的编号，i从1开始
    }
    
    int right[MAXN<<1];//right集合的大小
    void get_right(){//先调用sort得到拓扑序，然后再来这里
        for(int i=bfn[cnt];i!=0;i=par[i])right[i]=1;
        for(int i=cnt;i>=2;i--){//1号节点为根，其实不需要
            int j=bfn[i];
            for(IT it=trans[j].begin();it!=trans[j].end();it++){
                right[j]+=right[it->second];
            }
        }
    }
};

*/
vector<map<int,int>>vec;

int main(){
    int a,b;
    while(cin>>a>>b){
        cout<<a+b<<endl;
    }
    for(int i=0;i<20000;i++){
        map<int,int>mp;
        mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;mp[1]=1;
        vec.push_back(mp);
    }
}', 1, 2, 15, 3896);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory) VALUES (17, 17, '35809298', '#include<bits/stdc++.h>
using namespace std;
int main(){
int a,b;cin>>a>>b;cout<<a+b<<endl;
}', 2, 3, 15, 1388);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory) VALUES (18, 17, '35809316', '#include<bits/stdc++.h>
using namespace std;
int main(){
int a,b;
while(cin>>a>>b){
cout<<a+b<<endl;
}
}', 2, 2, 0, 1392);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory) VALUES (19, 14, '35814310', '//写一点代码', 2, 6, 0, 0);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory) VALUES (22, 14, '35867930', '#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>', 1, 6, 0, 0);