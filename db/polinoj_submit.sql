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
    cc_info          text         null,
    run_info         text         null,
    context_id       bigint       null,
    submit_time      bigint       null,
    constraint submit_source_submit_id_uindex
        unique (source_submit_id)
);

INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (14, 17, '35808931', '#include<bits/stdc++.h>
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
}', 1, 6, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (15, 17, '35809009', '#include<bits/stdc++.h>
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
}', 1, 6, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (16, 17, '35809036', '#include<bits/stdc++.h>
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
}', 1, 2, 15, 3896, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (17, 17, '35809298', '#include<bits/stdc++.h>
using namespace std;
int main(){
int a,b;cin>>a>>b;cout<<a+b<<endl;
}', 2, 3, 15, 1388, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (18, 17, '35809316', '#include<bits/stdc++.h>
using namespace std;
int main(){
int a,b;
while(cin>>a>>b){
cout<<a+b<<endl;
}
}', 2, 2, 0, 1392, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (19, 14, '35814310', '//写一点代码', 2, 6, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (22, 14, '35867930', '#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>', 1, 6, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (23, 68, '35898676', 'hjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdf', 1, 6, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (25, 75, 'fd211475-c9c7-4f98-af1b-c61b31c6dca6', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}
', 1, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (26, 75, '64ee7d97-c0ba-4e01-8c81-cb015c2a64ce', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b ) << endl;
}
', 1, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (27, 75, '2dbd00a0-159c-4694-a91f-f412e35ed69b', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b) << endl;
}
', 1, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (28, 75, 'ac0b7656-762d-4765-90cc-147b64bbc8d1', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}
', 1, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (29, 75, 'b0b3e2f7-e876-4938-9879-57b16ffe4c36', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 3, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (30, 75, 'c47c56c0-cbd3-4a7e-ae10-8be263f94878', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (31, 75, '9352e0b0-ebf5-4068-b4f1-17cc7ea222e8', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (32, 75, 'feff9994-de50-400c-a6de-f47f74404f0a', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 3, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (33, 75, '1a3200b2-4f3e-40c5-9a00-d008a7a39ef7', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (34, 75, 'e81c3bce-b5ff-47d9-9ddf-45af35d12fea', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (35, 75, 'eb62a029-1d97-49a0-be4f-cc620b1066e4', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (36, 75, 'ee3821b1-37cc-498d-8026-de412bb07721', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (37, 75, '72b00e7d-025e-4970-9525-434af089ebb9', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    int a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 3, 1308, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (38, 75, '7d0464e5-f4c6-48e9-b454-526feafae36f', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 3, 1569, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (39, 75, '7636d128-263b-412f-873e-d65614e6bf04', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e6;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 2, 1338, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (40, 75, 'e88fe078-e067-49cd-95f1-da2afaa344de', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 1, 2, 2211, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (41, 75, '63fd9372-1f5b-4fe0-bb4a-d46f284a806e', '#include<bits/stdc++.h>

using namespace std;

int main(){
    int x
}', 2, 7, 9967, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (42, 75, 'f231f47f-4b5d-45d7-821e-de96d638c91a', '#include<bits/stdc++.h>

using namespace std;

int main(){
    int x;
    cin>>x;
    cout<<x<<endl;
}', 2, 3, 2277, 0, 'stdout:
errout:
', '[{"returnCode":3,"times":2277}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (43, 75, 'fd2813d8-9409-4b0b-aef8-7a87b3d59a45', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 2, 2, 1745, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":958},{"returnCode":2,"times":1745},{"returnCode":2,"times":1240}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (44, 75, '65aa548c-1452-45cf-868c-954ea96f4ba8', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl
}', 2, 7, 1601, 0, 'stdout:
errout:
/main.cpp: In function ''int main()'':
/main.cpp:11:34: error: expected '';'' before ''}'' token
   11 |     cout << (a + b + s%1) << endl
      |                                  ^
      |                                  ;
   12 | }
      | ~                                 
', '[{"returnCode":7,"times":1601}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (45, 75, 'f70dca56-7315-41f9-a7ab-cbfe398434f7', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl
}', 2, 7, 1633, 0, 'stdout:
errout:
/main.cpp: In function ''int main()'':
/main.cpp:11:34: error: expected '';'' before ''}'' token
   11 |     cout << (a + b + s%1) << endl
      |                                  ^
      |                                  ;
   12 | }
      | ~                                 
', '[{"returnCode":7,"times":1633}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (46, 75, '9ff9a040-c91f-468a-b785-369f15e59151', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl
}', 2, 7, 5372, 0, 'stdout:
errout:
/main.cpp: In function ''int main()'':
/main.cpp:11:34: error: expected '';'' before ''}'' token
   11 |     cout << (a + b + s%1) << endl
      |                                  ^
      |                                  ;
   12 | }
      | ~                                 
', '[{"returnCode":7,"times":5372}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (47, 75, 'b66430d5-da74-4b3c-a2d2-3ae8cc2fb7de', ' #include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl
}', 2, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (48, 75, 'e6b2eee7-23eb-4f69-90c4-099f433b3f13', ' #include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl
}', 2, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (49, 75, 'dfc4e485-ca0d-468d-ab65-64ec8a05e129', '                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
                            aria-disabled={true}
', 2, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (50, 75, 'c8ad0349-9d75-401f-857c-adfb6467005a', ' #include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl
}', 2, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (51, 75, '29203609-75f6-4bbc-8fc9-63004a925dc6', ' #include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl
}', 2, 9, 0, 0, 'stdout:
errout:
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (52, 75, 'f4e0b135-16ed-41ae-a7ce-bae813e63112', ' #include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    for(int i=0;i<1e7;i++){
        s+=i;
    }
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl
}', 2, 6, 0, 0, '编译超时', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (53, 75, 'e91bcab7-e43d-4d0f-970d-14ed904c4fa9', '#inclu
#inclu
#inclu
#inclu
#inclu
#inclu
#inclu
#inclu
#inclu
', 2, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:2: error: invalid preprocessing directive #inclu; did you mean #include?
    1 | #inclu
      |  ^~~~~
      |  include
/main.cpp:2:2: error: invalid preprocessing directive #inclu; did you mean #include?
    2 | #inclu
      |  ^~~~~
      |  include
/main.cpp:3:2: error: invalid preprocessing directive #inclu; did you mean #include?
    3 | #inclu
      |  ^~~~~
      |  include
/main.cpp:4:2: error: invalid preprocessing directive #inclu; did you mean #include?
    4 | #inclu
      |  ^~~~~
      |  include
/main.cpp:5:2: error: invalid preprocessing directive #inclu; did you mean #include?
    5 | #inclu
      |  ^~~~~
      |  include
/main.cpp:6:2: error: invalid preprocessing directive #inclu; did you mean #include?
    6 | #inclu
      |  ^~~~~
      |  include
/main.cpp:7:2: error: invalid preprocessing directive #inclu; did you mean #include?
    7 | #inclu
      |  ^~~~~
      |  include
/main.cpp:8:2: error: invalid preprocessing directive #inclu; did you mean #include?
    8 | #inclu
      |  ^~~~~
      |  include
/main.cpp:9:2: error: invalid preprocessing directive #inclu; did you mean #include?
    9 | #inclu
      |  ^~~~~
      |  include
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (54, 75, '3bfc809e-07ff-4669-aa8a-77f65ba5ed9c', 'asdfdfds
saf
asd
fsda
fas
fdsfasfs
f
sdfsdafdsf

sa
fs
df
sdf', 2, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:1: error: ''asdfdfds'' does not name a type
    1 | asdfdfds
      | ^~~~~~~~
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (55, 75, '47523926-f9a6-4a9a-bac9-d91a2e70c3d9', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",a+b);
}', 2, 6, 0, 0, '编译超时', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (56, 75, 'e082c594-a045-414d-bafc-3722cf4a14ff', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",a+b);
}', 2, 3, 3651, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":3651},{"returnCode":2,"times":1583},{"returnCode":3,"times":1454}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (57, 75, '34508631-aa51-435f-825a-646f0e1310d4', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",a+b);
}', 2, 3, 1665, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":1643},{"returnCode":2,"times":1665},{"returnCode":3,"times":1262}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (58, 75, '172b839d-b4a3-4135-af19-4e445dc97579', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",a+b);
}', 2, 3, 1920, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":1920},{"returnCode":2,"times":1841},{"returnCode":3,"times":1631}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (59, 75, '3dc8566e-b7e3-4bf8-a686-d9866311c872', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",a+b);
}', 2, 3, 1736, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":1372},{"returnCode":2,"times":1136},{"returnCode":3,"times":1736}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (60, 75, 'bc41301b-6a7e-4407-8e28-426d86065c43', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",0ll+a+b);
}', 2, 3, 2027, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":1372},{"returnCode":2,"times":2027},{"returnCode":3,"times":1784}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (61, 75, 'f17c8e59-2206-48f7-bfe7-482ea9376851', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
}', 2, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (62, 75, 'ee35cd56-f750-455a-a215-347ad512e101', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
    return -1;
}', 2, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (63, 75, '88954a7f-c550-444a-828c-1e9c5459fc18', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
    return -1;
}', 2, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (64, 75, '598c835f-5cf9-49dd-83b2-70922604865d', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
    return -1;
}', 2, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (65, 75, '497d0776-9081-4773-9a91-8d4e863c715a', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
    return -1;
}', 2, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (66, 75, '9d5ddfae-6e01-4f13-8eb2-2edd6d0a7164', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
    return -1;
}', 2, 7, 50, 0, 'stdout:
errout:
', '[{"returnCode":7,"times":50}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (67, 77, '914031b3-eeb8-479d-b759-d38c158f0aa4', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=2;i<=n;i++){
            int c = (a+b)%10000;
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 4, 1000, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1000}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (68, 77, 'ac82da69-3c12-4635-bb7e-490997088f75', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=2;i<=n;i++){
            int c = (a+b)%10000;
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 4, 9860, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":9860}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (69, 77, '4162c00b-cc5f-4b12-abb8-616495bc8901', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=2;i<=n;i++){
            int c = (a+b)%10000;
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 3, 930, 0, 'stdout:
errout:
', '[{"returnCode":3,"times":930}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (70, 77, '05964658-0d7a-4e22-accf-bea8013f4485', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=2;i<=n;i++){
            int c = (a+b)%998244353;
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 3, 650, 0, 'stdout:
errout:
', '[{"returnCode":3,"times":650}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (71, 77, '5158a468-0969-4780-a2c3-7132d54fe78c', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b)%998244353;
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 4, 1010, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":530},{"returnCode":4,"times":1010}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (72, 77, '51a5aa36-608a-45d9-b224-1386e306c0bb', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 4, 1010, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":500},{"returnCode":4,"times":1010}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (73, 77, '7bf34efd-dc18-4d6c-a841-fabf43fa3ea4', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 1, 2, 530, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":310},{"returnCode":2,"times":480},{"returnCode":2,"times":330},{"returnCode":2,"times":240},{"returnCode":2,"times":120},{"returnCode":2,"times":380},{"returnCode":2,"times":370},{"returnCode":2,"times":160},{"returnCode":2,"times":120},{"returnCode":2,"times":450},{"returnCode":2,"times":460},{"returnCode":2,"times":240},{"returnCode":2,"times":280},{"returnCode":2,"times":250},{"returnCode":2,"times":440},{"returnCode":2,"times":490},{"returnCode":2,"times":240},{"returnCode":2,"times":530},{"returnCode":2,"times":480},{"returnCode":2,"times":150}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (74, 77, 'dc82d326-6811-4f7a-b097-f96483d90d0f', '#include<bits/stdc++.h>
using namespace std;
#define ll long long 
ll mod=998244353;ll 
getAns(int a){    ll t1=1,t2=1;    for(int i=3;i<=a;i++){        ll tem=t1+t2;        t1=t2;        t2=tem;        t1%=mod;        t2%=mod;    }    return t2;}
int main(){    int a;cin>>a;    cout<<getAns(a)<<endl;}', 3, 4, 1390, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1390}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (75, 77, '4d989764-9967-48c6-908c-bc2ac9a4e454', '#include<bits/stdc++.h>
using namespace std;
 
int mod=998244353; 
int getAns(int a){    
    int t1=1,t2=1;    
    for(int i=3;i<=a;i++){        
        int tem=t1+t2;        
        t1=t2;        
        t2=tem;        
        t1%=mod;        
        t2%=mod;    
    }    
    return t2;
}
int main(){    int a;cin>>a;    cout<<getAns(a)<<endl;}', 3, 4, 1058, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1058}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (76, 77, '7400c006-c23e-4d74-85a6-2450108ecb96', '#include<bits/stdc++.h>
using namespace std;
const int mod=998244353;
void getAns(int a){
	int t1=1,t2=1;
	for(int i=3;i<=a;i++){
		int tem=(t1+t2);
		t1=t2;
		t2=tem;
		t1%=mod;
		t2%=mod;
	}
	printf("%d\\n",t2);
}
int mian(){
	int a;
	scanf("%d",&a);
	getAns();
}', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp: In function ''int mian()'':
/main.cpp:18:15: error: too few arguments to function ''void getAns(int)''
   18 |         getAns();
      |         ~~~~~~^~
/main.cpp:4:6: note: declared here
    4 | void getAns(int a){
      |      ^~~~~~
/main.cpp:19:1: warning: no return statement in function returning non-void [-Wreturn-type]
   19 | }
      | ^
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (77, 77, 'e37597ee-e049-4b81-be0f-39fb2e5fb621', 'sasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasd', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:1: error: ''sasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasd'' does not name a type
    1 | sasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasdsasdasdasd
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (78, 77, '0f1bb432-8a40-453f-b6b2-6e8607777d21', '#include<bits/stdc++.h>
using namespace std;
 
int mod=998244353; 
int getAns(int a){
    if(a == 0)return 0;    
    int t1=1,t2=1;    
    for(int i=3;i<=a;i++){        
        int tem=t1+t2;        
        t1=t2;        
        t2=tem;        
        t1%=mod;        
        t2%=mod;    
    }    
    return t2;
}
int main(){    int a;cin>>a;    cout<<getAns(a)<<endl;}', 3, 4, 1176, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1176}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (79, 77, '4dec8a5d-e7ea-4232-8b3e-b4e4a9f04b61', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 3, 4, 1160, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1160}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (80, 77, 'ef051723-d8de-43d4-8456-a3594f548314', '#include<bits/stdc++.h>
using namespace std;
#define ll long long
void dfs(int i){
	for(int i=1;i<=1000;i++){
		dfs(i+1);
	}
}
int main(){
     int a;cin>>a;
     for(ll i=1;i<=1000000000000;i++){
     	dfs(i);
     }
}', 1, 4, 1082, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1082}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (81, 77, '0154dcc5-1de5-4ab7-b8c4-4e7decd64224', '#include<bits/stdc++.h>
using namespace std;
#define ll long long
void dfs(int i){
	for(int i=1;i<=1000;i++){
		dfs(i+1);
	}
}
int main(){
     int a;cin>>a;
     for(ll i=1;i<=1000000000000;i++){
     	dfs(i);
     }
}', 1, 4, 1258, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1258}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (82, 77, '762d8796-60e8-468d-8d42-442bed044a23', '#include<bits/stdc++.h>
using namespace std;
#define ll long long
void dfs(int i){
	for(int i=1;i<=1000;i++){
		dfs(i+1);
	}
}
int main(){
     int a;cin>>a;
     for(ll i=1;i<=1000000000000;i++){
     	dfs(i);
     }
}', 1, 4, 1228, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1228}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (83, 77, 'a45bc2f0-807c-47dc-bd22-cbdab9dea960', '#include<bits/stdc++.h>
using namespace std;
#define ll long long
void dfs(int i){
	for(int i=1;i<=1000;i++){
		dfs(i+1);
	}
}
int main(){
     int a;cin>>a;
     for(ll i=1;i<=1000000000000;i++){
     	dfs(i);
     }
}', 1, 4, 1129, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1129}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (84, 77, 'ffb00a66-4984-4d93-af2a-fa6b8cdad40e', 'dsadasdasdasdasdasdadsadasdasdasdasdasdadsadasdasdasdasdasdadsadasdasdasdasdasda', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:1: error: ''dsadasdasdasdasdasdadsadasdasdasdasdasdadsadasdasdasdasdasdadsadasdasdasdasdasda'' does not name a type
    1 | dsadasdasdasdasdasdadsadasdasdasdasdasdadsadasdasdasdasdasdadsadasdasdasdasdasda
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (85, 77, '6a648493-43a8-4752-8dd1-a9786aa5397b', 'dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:1: error: ''dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa'' does not name a type
    1 | dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (86, 77, '0cb0555e-0e6e-4af1-96e2-ea5a43a22b14', 'dsadasdasdasdasdasdsadadsadasdasdasdasdasdsadadsadasdasdasdasdasdsadadsadasdasdasdasdasdsada', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:1: error: ''dsadasdasdasdasdasdsadadsadasdasdasdasdasdsadadsadasdasdasdasdasdsadadsadasdasdasdasdasdsada'' does not name a type
    1 | dsadasdasdasdasdasdsadadsadasdasdasdasdasdsadadsadasdasdasdasdasdsadadsadasdasdasdasdasdsada
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (87, 77, '05e954df-6985-4c41-910e-30d3fa5da4b4', 'dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:1: error: ''dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa'' does not name a type
    1 | dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (88, 77, 'ddfcedeb-258a-41b7-8ec6-e1c6aba9938f', 'dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:1: error: ''dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa'' does not name a type
    1 | dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (89, 77, '7aa0f674-2458-4e1a-acf5-88fbdeaa724f', 'dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:1: error: ''dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa'' does not name a type
    1 | dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (90, 77, 'e0297499-95a6-4ed9-88ee-e2e0eaff66c1', '#include<bits/stdc++.h>
using namespace std;
#define ll long long
void dfs(int i){
	for(int i=1;i<=1000;i++){
		dfs(i+1);
	}
}
int main(){
     int a;cin>>a;
     for(ll i=1;i<=1000000000000;i++){
     	dfs(i);
     }
}', 1, 4, 1419, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1419}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (91, 77, '423d25a9-93fe-4373-8f17-2b431d2a0b5f', 'dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:1: error: ''dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa'' does not name a type
    1 | dasdadasdasdasdasdasdasdasdsadsadasdadasdasdasdasdasdasdasdsadsa
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (92, 77, '8f0902a4-7bb3-4cb3-afde-7bf2d76b001c', '#include<bits/stdc++.h>rnusing namespace std;rn#define ll long longrnvoid dfs(int i){rntfor(int i=1;i<=1000;i++){rnttdfs(i+1);rnt}rn}rnint main(){rn     int a;cin>>a;rn     for(ll i=1;i<=1000000000000;i++){rn     tdfs(i);rn     }rn}', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:32: warning: extra tokens at end of #include directive
    1 | #include<bits/stdc++.h>rnusing namespace std;rn#define ll long longrnvoid dfs(int i){rntfor(int i=1;i<=1000;i++){rnttdfs(i+1);rnt}rn}rnint main(){rn     int a;cin>>a;rn     for(ll i=1;i<=1000000000000;i++){rn     tdfs(i);rn     }rn}
      |                                ^~~~~~~~~
/main.cpp:1:9: fatal error: bits/stdc++.h>rnusin: No such file or directory
    1 | #include<bits/stdc++.h>rnusing namespace std;rn#define ll long longrnvoid dfs(int i){rntfor(int i=1;i<=1000;i++){rnttdfs(i+1);rnt}rn}rnint main(){rn     int a;cin>>a;rn     for(ll i=1;i<=1000000000000;i++){rn     tdfs(i);rn     }rn}
      |         ^~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (93, 77, '2f2b6cf5-c79c-46f8-9e9f-e70c23bc221b', '#include<bits/stdc++.h>rnusing namespace std;rn#define ll long longrnvoid dfs(int i){rntfor(int i=1;i<=1000;i++){rnttdfs(i+1);rnt}rn}rnint main(){rn     int a;cin>>a;rn     for(ll i=1;i<=1000000000000;i++){rn     tdfs(i);rn     }rn}', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:32: warning: extra tokens at end of #include directive
    1 | #include<bits/stdc++.h>rnusing namespace std;rn#define ll long longrnvoid dfs(int i){rntfor(int i=1;i<=1000;i++){rnttdfs(i+1);rnt}rn}rnint main(){rn     int a;cin>>a;rn     for(ll i=1;i<=1000000000000;i++){rn     tdfs(i);rn     }rn}
      |                                ^~~~~~~~~
/main.cpp:1:9: fatal error: bits/stdc++.h>rnusin: No such file or directory
    1 | #include<bits/stdc++.h>rnusing namespace std;rn#define ll long longrnvoid dfs(int i){rntfor(int i=1;i<=1000;i++){rnttdfs(i+1);rnt}rn}rnint main(){rn     int a;cin>>a;rn     for(ll i=1;i<=1000000000000;i++){rn     tdfs(i);rn     }rn}
      |         ^~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (94, 77, '212b7738-2a35-49c9-8bdc-1f885da81f28', '#include<bits/stdc++.h> using namespace std; int main(){ int a;cin>>a;while(true);}', 1, 6, 0, 0, 'stdout:
errout:
/main.cpp:1:25: warning: extra tokens at end of #include directive
    1 | #include<bits/stdc++.h> using namespace std; int main(){ int a;cin>>a;while(true);}
      |                         ^~~~~
/usr/bin/ld: /usr/lib/x86_64-linux-gnu/crt1.o: in function `_start'':
(.text+0x20): undefined reference to `main''
collect2: error: ld returned 1 exit status
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (95, 77, 'a106eaaa-f7b8-4dd3-928e-73cba828d0e6', 'using namespace std;int main(){int a;while(true);}', 1, 4, 1086, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1086}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (96, 77, '6c370d0f-4995-43d6-9ee8-2bb4dc103a40', 'using namespace std;int main(){int a;while(true);}', 1, 4, 1433, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1433}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (97, 77, '3c92227e-dfab-4680-8c72-7f8c0eb9c6d8', 'using namespace std;int main(){int a;while(true);}', 1, 4, 1104, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1104}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (98, 77, '7d26e676-9c0e-4a6b-b4d4-8a87eafcfed3', 'using namespace std;int main(){int a;while(true);}', 1, 4, 1227, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1227}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (99, 77, '6dfcd4e6-bbf4-4c16-81eb-e2731f1c4269', 'using namespace std;int main(){int a;while(true);}', 1, 4, 1126, 0, 'stdout:
errout:
', '[{"returnCode":4,"times":1126}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (100, 77, '36c9c25e-f275-49a1-88a8-5a9bc58f5897', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 4, 1000, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":230},{"returnCode":2,"times":370},{"returnCode":4,"times":1000}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (101, 77, '0b39d042-3687-4c8f-8a6a-b67e103f31ed', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 6, 0, 0, '编译超时', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (102, 77, 'c797cdbf-33c9-4018-bc0a-b1d21dac9e80', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 6, 0, 0, '编译超时', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (103, 75, '088133eb-6b8a-4333-a7a4-62c7d0f1f6b4', '#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s = 0;
    long long a, b;
    cin >> a >> b;
    cout << (a + b + s%1) << endl;
}', 2, 6, 0, 0, '编译超时', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (104, 77, '29c0abe9-cd3e-42c1-8a8e-34b512932a57', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (105, 77, '70a754a9-79c3-4630-9b25-b5e54c41ae6f', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (106, 77, 'da501c39-a36a-4939-9faa-cbd716326e2b', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (107, 77, 'e2107add-6ee8-49da-83b0-8acaf17b9a64', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (108, 77, '28762a96-b2a2-4df0-b241-46e6d50216eb', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (109, 77, '124bc7c2-a71f-41d1-b1b9-be72b0c5a862', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (110, 77, '976ed319-aaca-444d-9350-c7ebf2b5894b', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (111, 77, '6c91d6d5-dc6e-4b9a-b9f3-27bee99a0576', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (112, 77, '54a4655e-6998-4590-977a-3af776b396a6', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (113, 77, 'b998ae28-0727-4cde-b17d-0d07f5938190', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (114, 77, 'c579d2e2-17fb-4954-8064-80bf582e145a', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (115, 77, 'c3b5c98f-c83a-4e07-811a-41d79dbb1ea6', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (116, 77, '60179ba6-d253-43b8-87c7-cad54668c840', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (117, 77, 'a4031f71-4866-4178-9cb9-d2408445a342', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (118, 77, 'f4b1cb3e-00e0-4490-bcde-14e7c80c9d7c', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (119, 77, '24449627-004d-4f2c-b2a1-cf1aa5cbdbb8', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (120, 77, '48dbb88e-9cea-46c1-a414-f1b494137caf', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (121, 77, '5439a53f-447f-4d63-8b45-a19f89253f7d', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (122, 77, '91fc99f8-b8f9-4788-a3cd-771f560de62e', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (123, 77, '894a130e-eff9-45d4-9f16-39991c152453', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (124, 77, '0ccd4bc0-9c07-4be5-ade4-12b1cd514692', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (125, 77, 'c5dfb447-2bc9-4fe6-a382-cff966e770bd', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (126, 77, '431af8f8-7ad7-4ad2-af51-0bac86d712a8', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (127, 77, '8dfee363-2c1d-45cd-a335-c6e2dd16f608', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (128, 77, '6d6b019d-f0c6-42d0-b069-67cc7119c9c6', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (129, 77, 'ec8fe4a2-fc45-4883-9130-17551cb5a122', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (130, 77, 'bc2bfc41-c8ec-4050-911a-fd22b552247b', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (131, 77, 'd07da178-ea7f-401e-8f32-174168a26f1b', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (132, 77, '85f8943f-ef23-4683-8a40-c7d9d5d74d9e', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (133, 77, '862282fc-d614-4349-bf80-ad6fd7a6629c', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (134, 77, '73d66cfd-c4a7-4b40-b943-72d6145a8e2a', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (135, 77, '81f7a394-576f-46a6-b09d-06abe56f4c46', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (136, 77, 'a5dbd582-ee86-451d-ae4f-f6da05241f2a', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (137, 77, 'c95c4680-8806-45dd-aaeb-35402f663164', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (138, 77, '88ffaf51-6e8a-4720-9669-b118049ca287', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (139, 77, '00639541-be37-4160-855b-3ab4b2c945b1', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (140, 77, '6a6ca969-52d0-438e-8ab4-fceeff47d3d1', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (141, 77, 'de94068c-72c9-4eb0-b3b7-6a77921a0956', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (142, 77, '388fa71c-0adf-4893-9840-ee95dac03e68', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (143, 77, '3dd6046d-45a1-4604-8c1f-4d26f40c9b64', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (144, 77, 'd4c0b701-2d26-4375-942d-147f53ec1bbc', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (145, 77, '63d89468-fa4c-4d1d-8059-b06d5e09a18c', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (146, 77, 'fcb77ae1-b281-43cd-bcbd-9d31c68077ee', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (147, 77, 'fc70234a-f911-410d-8f42-70c6fcf254e2', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (148, 77, '3af5e48e-6577-4337-aed7-d0fba41bd305', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (149, 77, 'aa8933cb-a5dd-4e98-83dd-6afd961cfcf3', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (150, 77, '5e575f11-a3fd-4217-8be4-28bc8f75992b', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (151, 77, 'b0badca9-4011-41fb-95d0-ee7a98fb4408', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (152, 77, 'cfa6bebf-1474-476f-9ece-38c1b49f070d', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (153, 77, 'a9dbafee-ee49-4ff7-b7b1-2e9c67789d0d', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (154, 77, 'b0d5c4f8-41fe-4a79-9554-ca0dbb974092', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (155, 77, '44546827-1d1e-4852-80bc-b21867ab2b02', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (156, 77, 'cf4b387c-97bd-43d2-acd2-1c6b0306eaaa', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (157, 77, 'a273f170-674c-42f4-bec3-35f51cbf2d85', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (158, 77, '0c5586cc-a85a-474f-8eba-328437d8a0f6', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (159, 77, '249216d0-9050-4217-a84f-0528d22fd7b8', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (160, 77, '0fa839b4-b7db-489b-bcd9-b56a9988e12b', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (161, 77, 'd2da0d06-35c8-41c1-ac70-31dd7228d065', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (162, 77, '7e100ccd-49aa-4062-9c51-fbb5592de737', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (163, 77, '56ca01ca-1852-47b3-a68a-d85f05158e11', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (164, 77, '8f28f239-9c6f-4bd3-abcb-201edc307312', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (165, 77, 'db123895-d7cb-4c8a-ae83-493f924716e0', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (166, 77, '803c5d28-8c1d-4a58-b2fb-b74b5ff17692', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (167, 77, '6b600e30-6475-4be2-beff-d6ad16cb95ef', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (168, 77, 'fcce7a5e-6a14-45d2-a3da-c1e17bc58c38', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (169, 77, 'eac3bd25-f0f0-482d-b25e-43ce1177f3c1', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (170, 77, '4f57c179-f23c-4799-a817-7a6cb4644a43', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (171, 77, '6d0f3d6d-82d7-4019-b905-a26faf73c2da', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (172, 77, 'e130a213-249c-4013-8994-8802f4cfe47e', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (173, 77, 'c8f0d00c-4565-4007-9a43-8f4e0433f48c', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (174, 77, 'f227a9b1-10fa-439d-afda-cb5b30409c83', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (175, 77, 'c7528f1b-2ecc-406d-8cbb-7f58dfeab285', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (176, 77, '30ab80b8-5afd-49c0-84ed-28833bf92d14', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (177, 77, 'b01ba2fa-d4d4-4596-b5da-f276ac72d65b', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (178, 77, '37dac82f-0251-4d18-bd5e-255b0cec5722', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (179, 77, 'c203a4f7-87eb-47a2-a310-1c7c4fa6fbd1', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (180, 77, '58dfd2c8-0720-4024-9cae-44da6e7ace00', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (181, 77, 'd41dd709-dd93-4a5b-a589-8f39fc86df6c', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (182, 77, 'bc7d0469-24b7-49d9-8c4f-ee76cdf89f25', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (183, 77, '0d0ea26e-6369-4929-9888-540073783424', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (184, 77, '6d833b9b-6ab5-4c70-b23e-9410b4ff1109', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (185, 77, '0729db7e-73e7-46f3-b2d0-c9d3da64589c', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (186, 77, 'a86fd5d6-047d-4be5-b196-c3b61ea7d1bf', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (187, 77, '1f817e9e-09ab-4355-81ea-d8c67b0c36d4', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (188, 77, '8ca256d8-c11c-49e0-ad25-62d376a1d71d', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (189, 77, '6086b92e-fd1a-41fe-a0af-c3f705a2fc0d', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (190, 77, '007b2fac-fc2f-4d26-ab77-c537f8ff668c', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (191, 77, '5f037402-0389-43e6-b915-2c29e334f7e7', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (192, 77, 'e015f149-f9fe-4dc8-a07e-0c243c76b2d1', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (193, 77, '4ebe0402-5101-4fd2-b11f-9fd54d6d0c62', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (194, 77, '0cbe1c4b-0522-40b1-b13b-615f344cc821', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (195, 77, '63c403cc-5b74-4f4c-9804-8baf8bdd7935', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (196, 77, 'f4c44753-d922-4d2d-aebe-dfae5e37fb93', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (197, 77, 'f1dc7f09-7981-424a-84a0-8777edf865fe', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (198, 77, '2bc0f316-37f2-41d1-b30d-fbcf9b544477', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (199, 77, '2f70150a-b33c-45be-97d1-617a4163c6c1', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (200, 77, '480aced5-24d3-4d5f-a005-f2c853da0046', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (201, 77, '93bfb1b6-2a88-447d-bbc8-6c90abe22426', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (202, 77, '21fd83c1-a341-4692-aeb5-11f061ec52ca', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (203, 77, '8596c742-be0f-48bf-b5d2-897ee5e16a9b', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (204, 77, '271ddc52-8bee-4655-a6f2-860c4ad869c9', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (205, 77, 'a02ae077-6f14-433b-bae0-dcf9987d574c', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (206, 77, '64039014-6ee3-4c1c-afee-fddf11e73f44', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (207, 77, '96ef831b-1e29-470e-a476-73508c251596', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (208, 77, '3cf0629b-4de0-4e66-bbbc-76eedd02d4df', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (209, 77, '9f512601-16dc-4271-89dc-49961d71b096', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (210, 77, 'dd7e7306-54e3-423d-8662-8a49650825b0', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (211, 77, 'e8eb823d-bdbc-4955-95fd-53e73ea465f3', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (212, 77, '8f92882d-f131-4e80-9b6c-21ccdf2c18b3', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (213, 77, '56ff8a2d-dbc5-442f-b40b-0a37922ca9b6', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (214, 77, '9a3267b6-aa30-4bbc-a446-27ad10927466', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (215, 77, 'f68f5f9b-76d5-483a-8a1d-d3edb1ad0a28', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (216, 77, 'a2353535-c506-44fe-944c-183d0ec0014e', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (217, 77, 'a43d0d52-8e48-43f3-a64e-879c18f6a524', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (218, 77, 'c6e93924-b240-48ed-b51a-3535bf9643be', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (219, 77, '79b2d1b4-c498-43a5-aaa3-ec0f723b7acf', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (220, 77, '9430aa5c-d0e3-41f2-8dfd-1320cb785530', 'using namespace std;int main(){int a;while(true);}', 1, 9, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (221, 77, '42d7164f-3ae4-4dd8-ada2-4de9a9cc6c2b', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 6, 0, 0, '编译超时', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (222, 77, 'eb08e18d-cff7-4eed-91f8-e90ae47e7367', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":230},{"returnCode":2,"times":370},{"returnCode":2,"times":250},{"returnCode":2,"times":180},{"returnCode":2,"times":90},{"returnCode":2,"times":260},{"returnCode":2,"times":260},{"returnCode":2,"times":120},{"returnCode":2,"times":100},{"returnCode":2,"times":330},{"returnCode":2,"times":340},{"returnCode":2,"times":170},{"returnCode":2,"times":190},{"returnCode":2,"times":180},{"returnCode":2,"times":340},{"returnCode":2,"times":360},{"returnCode":2,"times":190},{"returnCode":2,"times":370},{"returnCode":2,"times":380},{"returnCode":2,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (223, 77, 'fd1857b7-d3ea-4719-9cbc-766642d168be', 'using namespace std;int main(){int a;while(true);}', 1, 8, 0, 0, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (437, 77, null, 'using namespace std;int main(){int a;while(true);}', 2, 4, null, null, 'stdout:
errout:
', '[{"returnCode":4,"submitId":437,"times":1000}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (439, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":439,"times":230},{"returnCode":2,"submitId":439,"times":370},{"returnCode":2,"submitId":439,"times":250},{"returnCode":2,"submitId":439,"times":180},{"returnCode":2,"submitId":439,"times":90},{"returnCode":2,"submitId":439,"times":260},{"returnCode":2,"submitId":439,"times":250},{"returnCode":2,"submitId":439,"times":120},{"returnCode":2,"submitId":439,"times":100},{"returnCode":2,"submitId":439,"times":330},{"returnCode":2,"submitId":439,"times":340},{"returnCode":2,"submitId":439,"times":170},{"returnCode":2,"submitId":439,"times":190},{"returnCode":2,"submitId":439,"times":180},{"returnCode":2,"submitId":439,"times":330},{"returnCode":2,"submitId":439,"times":360},{"returnCode":2,"submitId":439,"times":190},{"returnCode":2,"submitId":439,"times":370},{"returnCode":2,"submitId":439,"times":380},{"returnCode":2,"submitId":439,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (440, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":440,"times":230},{"returnCode":2,"submitId":440,"times":370},{"returnCode":2,"submitId":440,"times":250},{"returnCode":2,"submitId":440,"times":180},{"returnCode":2,"submitId":440,"times":90},{"returnCode":2,"submitId":440,"times":260},{"returnCode":2,"submitId":440,"times":260},{"returnCode":2,"submitId":440,"times":120},{"returnCode":2,"submitId":440,"times":100},{"returnCode":2,"submitId":440,"times":330},{"returnCode":2,"submitId":440,"times":340},{"returnCode":2,"submitId":440,"times":100},{"returnCode":2,"submitId":440,"times":190},{"returnCode":2,"submitId":440,"times":180},{"returnCode":2,"submitId":440,"times":330},{"returnCode":2,"submitId":440,"times":360},{"returnCode":2,"submitId":440,"times":190},{"returnCode":2,"submitId":440,"times":370},{"returnCode":2,"submitId":440,"times":380},{"returnCode":2,"submitId":440,"times":120},{"returnCode":2,"submitId":440,"times":230},{"returnCode":2,"submitId":440,"times":370},{"returnCode":2,"submitId":440,"times":250},{"returnCode":2,"submitId":440,"times":180},{"returnCode":2,"submitId":440,"times":100},{"returnCode":2,"submitId":440,"times":260},{"returnCode":2,"submitId":440,"times":260},{"returnCode":2,"submitId":440,"times":120},{"returnCode":2,"submitId":440,"times":100},{"returnCode":2,"submitId":440,"times":330},{"returnCode":2,"submitId":440,"times":340},{"returnCode":2,"submitId":440,"times":170},{"returnCode":2,"submitId":440,"times":190},{"returnCode":2,"submitId":440,"times":180},{"returnCode":2,"submitId":440,"times":330},{"returnCode":2,"submitId":440,"times":370},{"returnCode":2,"submitId":440,"times":190},{"returnCode":2,"submitId":440,"times":370},{"returnCode":2,"submitId":440,"times":380},{"returnCode":2,"submitId":440,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (441, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":441,"times":230},{"returnCode":2,"submitId":441,"times":370},{"returnCode":2,"submitId":441,"times":250},{"returnCode":2,"submitId":441,"times":180},{"returnCode":2,"submitId":441,"times":90},{"returnCode":2,"submitId":441,"times":260},{"returnCode":2,"submitId":441,"times":260},{"returnCode":2,"submitId":441,"times":120},{"returnCode":2,"submitId":441,"times":100},{"returnCode":2,"submitId":441,"times":330},{"returnCode":2,"submitId":441,"times":340},{"returnCode":2,"submitId":441,"times":170},{"returnCode":2,"submitId":441,"times":190},{"returnCode":2,"submitId":441,"times":180},{"returnCode":2,"submitId":441,"times":330},{"returnCode":2,"submitId":441,"times":370},{"returnCode":2,"submitId":441,"times":190},{"returnCode":2,"submitId":441,"times":370},{"returnCode":2,"submitId":441,"times":380},{"returnCode":2,"submitId":441,"times":120},{"returnCode":2,"submitId":441,"times":230},{"returnCode":2,"submitId":441,"times":370},{"returnCode":2,"submitId":441,"times":250},{"returnCode":2,"submitId":441,"times":180},{"returnCode":2,"submitId":441,"times":90},{"returnCode":2,"submitId":441,"times":260},{"returnCode":2,"submitId":441,"times":260},{"returnCode":2,"submitId":441,"times":120},{"returnCode":2,"submitId":441,"times":100},{"returnCode":2,"submitId":441,"times":330},{"returnCode":2,"submitId":441,"times":340},{"returnCode":2,"submitId":441,"times":170},{"returnCode":2,"submitId":441,"times":190},{"returnCode":2,"submitId":441,"times":190},{"returnCode":2,"submitId":441,"times":330},{"returnCode":2,"submitId":441,"times":360},{"returnCode":2,"submitId":441,"times":190},{"returnCode":2,"submitId":441,"times":370},{"returnCode":2,"submitId":441,"times":380},{"returnCode":2,"submitId":441,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (442, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":442,"times":230},{"returnCode":2,"submitId":442,"times":370},{"returnCode":2,"submitId":442,"times":250},{"returnCode":2,"submitId":442,"times":180},{"returnCode":2,"submitId":442,"times":90},{"returnCode":2,"submitId":442,"times":260},{"returnCode":2,"submitId":442,"times":260},{"returnCode":2,"submitId":442,"times":120},{"returnCode":2,"submitId":442,"times":100},{"returnCode":2,"submitId":442,"times":330},{"returnCode":2,"submitId":442,"times":330},{"returnCode":2,"submitId":442,"times":170},{"returnCode":2,"submitId":442,"times":190},{"returnCode":2,"submitId":442,"times":180},{"returnCode":2,"submitId":442,"times":330},{"returnCode":2,"submitId":442,"times":370},{"returnCode":2,"submitId":442,"times":190},{"returnCode":2,"submitId":442,"times":370},{"returnCode":2,"submitId":442,"times":380},{"returnCode":2,"submitId":442,"times":120},{"returnCode":2,"submitId":442,"times":230},{"returnCode":2,"submitId":442,"times":370},{"returnCode":2,"submitId":442,"times":260},{"returnCode":2,"submitId":442,"times":180},{"returnCode":2,"submitId":442,"times":90},{"returnCode":2,"submitId":442,"times":260},{"returnCode":2,"submitId":442,"times":260},{"returnCode":2,"submitId":442,"times":120},{"returnCode":2,"submitId":442,"times":100},{"returnCode":2,"submitId":442,"times":330},{"returnCode":2,"submitId":442,"times":340},{"returnCode":2,"submitId":442,"times":170},{"returnCode":2,"submitId":442,"times":190},{"returnCode":2,"submitId":442,"times":180},{"returnCode":2,"submitId":442,"times":330},{"returnCode":2,"submitId":442,"times":360},{"returnCode":2,"submitId":442,"times":190},{"returnCode":2,"submitId":442,"times":370},{"returnCode":2,"submitId":442,"times":380},{"returnCode":2,"submitId":442,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (443, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":443,"times":230},{"returnCode":2,"submitId":443,"times":370},{"returnCode":2,"submitId":443,"times":250},{"returnCode":2,"submitId":443,"times":180},{"returnCode":2,"submitId":443,"times":90},{"returnCode":2,"submitId":443,"times":260},{"returnCode":2,"submitId":443,"times":250},{"returnCode":2,"submitId":443,"times":120},{"returnCode":2,"submitId":443,"times":100},{"returnCode":2,"submitId":443,"times":320},{"returnCode":2,"submitId":443,"times":340},{"returnCode":2,"submitId":443,"times":170},{"returnCode":2,"submitId":443,"times":190},{"returnCode":2,"submitId":443,"times":180},{"returnCode":2,"submitId":443,"times":330},{"returnCode":2,"submitId":443,"times":370},{"returnCode":2,"submitId":443,"times":190},{"returnCode":2,"submitId":443,"times":370},{"returnCode":2,"submitId":443,"times":370},{"returnCode":2,"submitId":443,"times":230},{"returnCode":2,"submitId":443,"times":370},{"returnCode":2,"submitId":443,"times":250},{"returnCode":2,"submitId":443,"times":180},{"returnCode":2,"submitId":443,"times":90},{"returnCode":2,"submitId":443,"times":260},{"returnCode":2,"submitId":443,"times":260},{"returnCode":2,"submitId":443,"times":120},{"returnCode":2,"submitId":443,"times":100},{"returnCode":2,"submitId":443,"times":330},{"returnCode":2,"submitId":443,"times":340},{"returnCode":2,"submitId":443,"times":170},{"returnCode":2,"submitId":443,"times":190},{"returnCode":2,"submitId":443,"times":180},{"returnCode":2,"submitId":443,"times":330},{"returnCode":2,"submitId":443,"times":360},{"returnCode":2,"submitId":443,"times":190},{"returnCode":2,"submitId":443,"times":370},{"returnCode":2,"submitId":443,"times":380},{"returnCode":2,"submitId":443,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (444, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":444,"times":230},{"returnCode":2,"submitId":444,"times":360},{"returnCode":2,"submitId":444,"times":250},{"returnCode":2,"submitId":444,"times":180},{"returnCode":2,"submitId":444,"times":90},{"returnCode":2,"submitId":444,"times":260},{"returnCode":2,"submitId":444,"times":250},{"returnCode":2,"submitId":444,"times":120},{"returnCode":2,"submitId":444,"times":100},{"returnCode":2,"submitId":444,"times":330},{"returnCode":2,"submitId":444,"times":340},{"returnCode":2,"submitId":444,"times":170},{"returnCode":2,"submitId":444,"times":190},{"returnCode":2,"submitId":444,"times":190},{"returnCode":2,"submitId":444,"times":330},{"returnCode":2,"submitId":444,"times":370},{"returnCode":2,"submitId":444,"times":190},{"returnCode":2,"submitId":444,"times":370},{"returnCode":2,"submitId":444,"times":380},{"returnCode":2,"submitId":444,"times":120},{"returnCode":2,"submitId":444,"times":230},{"returnCode":2,"submitId":444,"times":370},{"returnCode":2,"submitId":444,"times":250},{"returnCode":2,"submitId":444,"times":180},{"returnCode":2,"submitId":444,"times":90},{"returnCode":2,"submitId":444,"times":260},{"returnCode":2,"submitId":444,"times":250},{"returnCode":2,"submitId":444,"times":120},{"returnCode":2,"submitId":444,"times":100},{"returnCode":2,"submitId":444,"times":330},{"returnCode":2,"submitId":444,"times":340},{"returnCode":2,"submitId":444,"times":170},{"returnCode":2,"submitId":444,"times":190},{"returnCode":2,"submitId":444,"times":180},{"returnCode":2,"submitId":444,"times":330},{"returnCode":2,"submitId":444,"times":370},{"returnCode":2,"submitId":444,"times":190},{"returnCode":2,"submitId":444,"times":370},{"returnCode":2,"submitId":444,"times":380},{"returnCode":2,"submitId":444,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (445, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":445,"times":230},{"returnCode":2,"submitId":445,"times":370},{"returnCode":2,"submitId":445,"times":250},{"returnCode":2,"submitId":445,"times":180},{"returnCode":2,"submitId":445,"times":90},{"returnCode":2,"submitId":445,"times":250},{"returnCode":2,"submitId":445,"times":260},{"returnCode":2,"submitId":445,"times":120},{"returnCode":2,"submitId":445,"times":100},{"returnCode":2,"submitId":445,"times":330},{"returnCode":2,"submitId":445,"times":340},{"returnCode":2,"submitId":445,"times":170},{"returnCode":2,"submitId":445,"times":190},{"returnCode":2,"submitId":445,"times":180},{"returnCode":2,"submitId":445,"times":330},{"returnCode":2,"submitId":445,"times":360},{"returnCode":2,"submitId":445,"times":190},{"returnCode":2,"submitId":445,"times":370},{"returnCode":2,"submitId":445,"times":370},{"returnCode":2,"submitId":445,"times":230},{"returnCode":2,"submitId":445,"times":370},{"returnCode":2,"submitId":445,"times":250},{"returnCode":2,"submitId":445,"times":180},{"returnCode":2,"submitId":445,"times":90},{"returnCode":2,"submitId":445,"times":260},{"returnCode":2,"submitId":445,"times":250},{"returnCode":2,"submitId":445,"times":120},{"returnCode":2,"submitId":445,"times":90},{"returnCode":2,"submitId":445,"times":330},{"returnCode":2,"submitId":445,"times":340},{"returnCode":2,"submitId":445,"times":170},{"returnCode":2,"submitId":445,"times":190},{"returnCode":2,"submitId":445,"times":180},{"returnCode":2,"submitId":445,"times":330},{"returnCode":2,"submitId":445,"times":360},{"returnCode":2,"submitId":445,"times":190},{"returnCode":2,"submitId":445,"times":380},{"returnCode":2,"submitId":445,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (446, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":446,"times":230},{"returnCode":2,"submitId":446,"times":370},{"returnCode":2,"submitId":446,"times":250},{"returnCode":2,"submitId":446,"times":180},{"returnCode":2,"submitId":446,"times":90},{"returnCode":2,"submitId":446,"times":250},{"returnCode":2,"submitId":446,"times":250},{"returnCode":2,"submitId":446,"times":120},{"returnCode":2,"submitId":446,"times":100},{"returnCode":2,"submitId":446,"times":330},{"returnCode":2,"submitId":446,"times":340},{"returnCode":2,"submitId":446,"times":170},{"returnCode":2,"submitId":446,"times":190},{"returnCode":2,"submitId":446,"times":180},{"returnCode":2,"submitId":446,"times":330},{"returnCode":2,"submitId":446,"times":370},{"returnCode":2,"submitId":446,"times":190},{"returnCode":2,"submitId":446,"times":370},{"returnCode":2,"submitId":446,"times":380},{"returnCode":2,"submitId":446,"times":230},{"returnCode":2,"submitId":446,"times":370},{"returnCode":2,"submitId":446,"times":250},{"returnCode":2,"submitId":446,"times":180},{"returnCode":2,"submitId":446,"times":90},{"returnCode":2,"submitId":446,"times":250},{"returnCode":2,"submitId":446,"times":260},{"returnCode":2,"submitId":446,"times":120},{"returnCode":2,"submitId":446,"times":100},{"returnCode":2,"submitId":446,"times":330},{"returnCode":2,"submitId":446,"times":340},{"returnCode":2,"submitId":446,"times":170},{"returnCode":2,"submitId":446,"times":190},{"returnCode":2,"submitId":446,"times":180},{"returnCode":2,"submitId":446,"times":330},{"returnCode":2,"submitId":446,"times":360},{"returnCode":2,"submitId":446,"times":190},{"returnCode":2,"submitId":446,"times":370},{"returnCode":2,"submitId":446,"times":380},{"returnCode":2,"submitId":446,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (447, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":447,"times":230},{"returnCode":2,"submitId":447,"times":370},{"returnCode":2,"submitId":447,"times":250},{"returnCode":2,"submitId":447,"times":180},{"returnCode":2,"submitId":447,"times":90},{"returnCode":2,"submitId":447,"times":250},{"returnCode":2,"submitId":447,"times":250},{"returnCode":2,"submitId":447,"times":120},{"returnCode":2,"submitId":447,"times":100},{"returnCode":2,"submitId":447,"times":330},{"returnCode":2,"submitId":447,"times":340},{"returnCode":2,"submitId":447,"times":170},{"returnCode":2,"submitId":447,"times":200},{"returnCode":2,"submitId":447,"times":180},{"returnCode":2,"submitId":447,"times":330},{"returnCode":2,"submitId":447,"times":370},{"returnCode":2,"submitId":447,"times":190},{"returnCode":2,"submitId":447,"times":370},{"returnCode":2,"submitId":447,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (448, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":448,"times":230},{"returnCode":2,"submitId":448,"times":370},{"returnCode":2,"submitId":448,"times":250},{"returnCode":2,"submitId":448,"times":180},{"returnCode":2,"submitId":448,"times":100},{"returnCode":2,"submitId":448,"times":260},{"returnCode":2,"submitId":448,"times":260},{"returnCode":2,"submitId":448,"times":120},{"returnCode":2,"submitId":448,"times":100},{"returnCode":2,"submitId":448,"times":330},{"returnCode":2,"submitId":448,"times":340},{"returnCode":2,"submitId":448,"times":170},{"returnCode":2,"submitId":448,"times":190},{"returnCode":2,"submitId":448,"times":180},{"returnCode":2,"submitId":448,"times":330},{"returnCode":2,"submitId":448,"times":360},{"returnCode":2,"submitId":448,"times":190},{"returnCode":2,"submitId":448,"times":370},{"returnCode":2,"submitId":448,"times":380},{"returnCode":2,"submitId":448,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (449, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":449,"times":230},{"returnCode":2,"submitId":449,"times":370},{"returnCode":2,"submitId":449,"times":250},{"returnCode":2,"submitId":449,"times":180},{"returnCode":2,"submitId":449,"times":90},{"returnCode":2,"submitId":449,"times":260},{"returnCode":2,"submitId":449,"times":260},{"returnCode":2,"submitId":449,"times":120},{"returnCode":2,"submitId":449,"times":100},{"returnCode":2,"submitId":449,"times":330},{"returnCode":2,"submitId":449,"times":330},{"returnCode":2,"submitId":449,"times":180},{"returnCode":2,"submitId":449,"times":190},{"returnCode":2,"submitId":449,"times":180},{"returnCode":2,"submitId":449,"times":330},{"returnCode":2,"submitId":449,"times":360},{"returnCode":2,"submitId":449,"times":190},{"returnCode":2,"submitId":449,"times":370},{"returnCode":2,"submitId":449,"times":380},{"returnCode":2,"submitId":449,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (450, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":450,"times":230},{"returnCode":2,"submitId":450,"times":370},{"returnCode":2,"submitId":450,"times":250},{"returnCode":2,"submitId":450,"times":180},{"returnCode":2,"submitId":450,"times":90},{"returnCode":2,"submitId":450,"times":260},{"returnCode":2,"submitId":450,"times":250},{"returnCode":2,"submitId":450,"times":120},{"returnCode":2,"submitId":450,"times":100},{"returnCode":2,"submitId":450,"times":330},{"returnCode":2,"submitId":450,"times":340},{"returnCode":2,"submitId":450,"times":170},{"returnCode":2,"submitId":450,"times":190},{"returnCode":2,"submitId":450,"times":180},{"returnCode":2,"submitId":450,"times":330},{"returnCode":2,"submitId":450,"times":360},{"returnCode":2,"submitId":450,"times":190},{"returnCode":2,"submitId":450,"times":370},{"returnCode":2,"submitId":450,"times":380},{"returnCode":2,"submitId":450,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (451, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":451,"times":230},{"returnCode":2,"submitId":451,"times":370},{"returnCode":2,"submitId":451,"times":250},{"returnCode":2,"submitId":451,"times":180},{"returnCode":2,"submitId":451,"times":90},{"returnCode":2,"submitId":451,"times":250},{"returnCode":2,"submitId":451,"times":260},{"returnCode":2,"submitId":451,"times":120},{"returnCode":2,"submitId":451,"times":100},{"returnCode":2,"submitId":451,"times":330},{"returnCode":2,"submitId":451,"times":340},{"returnCode":2,"submitId":451,"times":170},{"returnCode":2,"submitId":451,"times":190},{"returnCode":2,"submitId":451,"times":180},{"returnCode":2,"submitId":451,"times":340},{"returnCode":2,"submitId":451,"times":370},{"returnCode":2,"submitId":451,"times":190},{"returnCode":2,"submitId":451,"times":370},{"returnCode":2,"submitId":451,"times":380},{"returnCode":2,"submitId":451,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (452, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":452,"times":230},{"returnCode":2,"submitId":452,"times":370},{"returnCode":2,"submitId":452,"times":250},{"returnCode":2,"submitId":452,"times":180},{"returnCode":2,"submitId":452,"times":90},{"returnCode":2,"submitId":452,"times":260},{"returnCode":2,"submitId":452,"times":260},{"returnCode":2,"submitId":452,"times":120},{"returnCode":2,"submitId":452,"times":100},{"returnCode":2,"submitId":452,"times":330},{"returnCode":2,"submitId":452,"times":340},{"returnCode":2,"submitId":452,"times":170},{"returnCode":2,"submitId":452,"times":190},{"returnCode":2,"submitId":452,"times":180},{"returnCode":2,"submitId":452,"times":330},{"returnCode":2,"submitId":452,"times":360},{"returnCode":2,"submitId":452,"times":190},{"returnCode":2,"submitId":452,"times":370},{"returnCode":2,"submitId":452,"times":380},{"returnCode":2,"submitId":452,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (453, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":453,"times":230},{"returnCode":2,"submitId":453,"times":370},{"returnCode":2,"submitId":453,"times":250},{"returnCode":2,"submitId":453,"times":180},{"returnCode":2,"submitId":453,"times":90},{"returnCode":2,"submitId":453,"times":260},{"returnCode":2,"submitId":453,"times":260},{"returnCode":2,"submitId":453,"times":120},{"returnCode":2,"submitId":453,"times":100},{"returnCode":2,"submitId":453,"times":330},{"returnCode":2,"submitId":453,"times":340},{"returnCode":2,"submitId":453,"times":170},{"returnCode":2,"submitId":453,"times":190},{"returnCode":2,"submitId":453,"times":180},{"returnCode":2,"submitId":453,"times":330},{"returnCode":2,"submitId":453,"times":360},{"returnCode":2,"submitId":453,"times":190},{"returnCode":2,"submitId":453,"times":380},{"returnCode":2,"submitId":453,"times":380},{"returnCode":2,"submitId":453,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (454, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":454,"times":230},{"returnCode":2,"submitId":454,"times":370},{"returnCode":2,"submitId":454,"times":250},{"returnCode":2,"submitId":454,"times":180},{"returnCode":2,"submitId":454,"times":90},{"returnCode":2,"submitId":454,"times":250},{"returnCode":2,"submitId":454,"times":250},{"returnCode":2,"submitId":454,"times":120},{"returnCode":2,"submitId":454,"times":100},{"returnCode":2,"submitId":454,"times":330},{"returnCode":2,"submitId":454,"times":340},{"returnCode":2,"submitId":454,"times":170},{"returnCode":2,"submitId":454,"times":190},{"returnCode":2,"submitId":454,"times":180},{"returnCode":2,"submitId":454,"times":330},{"returnCode":2,"submitId":454,"times":360},{"returnCode":2,"submitId":454,"times":190},{"returnCode":2,"submitId":454,"times":370},{"returnCode":2,"submitId":454,"times":380},{"returnCode":2,"submitId":454,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (455, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 440, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":455,"times":230},{"returnCode":2,"submitId":455,"times":370},{"returnCode":2,"submitId":455,"times":250},{"returnCode":2,"submitId":455,"times":180},{"returnCode":2,"submitId":455,"times":90},{"returnCode":2,"submitId":455,"times":260},{"returnCode":2,"submitId":455,"times":260},{"returnCode":2,"submitId":455,"times":120},{"returnCode":2,"submitId":455,"times":100},{"returnCode":2,"submitId":455,"times":330},{"returnCode":2,"submitId":455,"times":340},{"returnCode":2,"submitId":455,"times":170},{"returnCode":2,"submitId":455,"times":190},{"returnCode":2,"submitId":455,"times":180},{"returnCode":2,"submitId":455,"times":330},{"returnCode":2,"submitId":455,"times":370},{"returnCode":2,"submitId":455,"times":200},{"returnCode":2,"submitId":455,"times":370},{"returnCode":2,"submitId":455,"times":440},{"returnCode":2,"submitId":455,"times":140}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (456, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":456,"times":230},{"returnCode":2,"submitId":456,"times":370},{"returnCode":2,"submitId":456,"times":250},{"returnCode":2,"submitId":456,"times":180},{"returnCode":2,"submitId":456,"times":90},{"returnCode":2,"submitId":456,"times":260},{"returnCode":2,"submitId":456,"times":260},{"returnCode":2,"submitId":456,"times":120},{"returnCode":2,"submitId":456,"times":100},{"returnCode":2,"submitId":456,"times":330},{"returnCode":2,"submitId":456,"times":340},{"returnCode":2,"submitId":456,"times":170},{"returnCode":2,"submitId":456,"times":190},{"returnCode":2,"submitId":456,"times":180},{"returnCode":2,"submitId":456,"times":330},{"returnCode":2,"submitId":456,"times":370},{"returnCode":2,"submitId":456,"times":190},{"returnCode":2,"submitId":456,"times":370},{"returnCode":2,"submitId":456,"times":370},{"returnCode":2,"submitId":456,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (457, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":457,"times":230},{"returnCode":2,"submitId":457,"times":370},{"returnCode":2,"submitId":457,"times":250},{"returnCode":2,"submitId":457,"times":180},{"returnCode":2,"submitId":457,"times":90},{"returnCode":2,"submitId":457,"times":260},{"returnCode":2,"submitId":457,"times":250},{"returnCode":2,"submitId":457,"times":120},{"returnCode":2,"submitId":457,"times":100},{"returnCode":2,"submitId":457,"times":340},{"returnCode":2,"submitId":457,"times":340},{"returnCode":2,"submitId":457,"times":170},{"returnCode":2,"submitId":457,"times":190},{"returnCode":2,"submitId":457,"times":180},{"returnCode":2,"submitId":457,"times":330},{"returnCode":2,"submitId":457,"times":360},{"returnCode":2,"submitId":457,"times":190},{"returnCode":2,"submitId":457,"times":370},{"returnCode":2,"submitId":457,"times":380},{"returnCode":2,"submitId":457,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (458, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":458,"times":230},{"returnCode":2,"submitId":458,"times":370},{"returnCode":2,"submitId":458,"times":250},{"returnCode":2,"submitId":458,"times":180},{"returnCode":2,"submitId":458,"times":90},{"returnCode":2,"submitId":458,"times":260},{"returnCode":2,"submitId":458,"times":260},{"returnCode":2,"submitId":458,"times":120},{"returnCode":2,"submitId":458,"times":100},{"returnCode":2,"submitId":458,"times":330},{"returnCode":2,"submitId":458,"times":340},{"returnCode":2,"submitId":458,"times":170},{"returnCode":2,"submitId":458,"times":180},{"returnCode":2,"submitId":458,"times":180},{"returnCode":2,"submitId":458,"times":330},{"returnCode":2,"submitId":458,"times":370},{"returnCode":2,"submitId":458,"times":190},{"returnCode":2,"submitId":458,"times":370},{"returnCode":2,"submitId":458,"times":380},{"returnCode":2,"submitId":458,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (459, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":459,"times":230},{"returnCode":2,"submitId":459,"times":370},{"returnCode":2,"submitId":459,"times":250},{"returnCode":2,"submitId":459,"times":180},{"returnCode":2,"submitId":459,"times":90},{"returnCode":2,"submitId":459,"times":260},{"returnCode":2,"submitId":459,"times":250},{"returnCode":2,"submitId":459,"times":120},{"returnCode":2,"submitId":459,"times":100},{"returnCode":2,"submitId":459,"times":330},{"returnCode":2,"submitId":459,"times":340},{"returnCode":2,"submitId":459,"times":170},{"returnCode":2,"submitId":459,"times":190},{"returnCode":2,"submitId":459,"times":190},{"returnCode":2,"submitId":459,"times":330},{"returnCode":2,"submitId":459,"times":360},{"returnCode":2,"submitId":459,"times":190},{"returnCode":2,"submitId":459,"times":370},{"returnCode":2,"submitId":459,"times":370},{"returnCode":2,"submitId":459,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (460, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":460,"times":230},{"returnCode":2,"submitId":460,"times":370},{"returnCode":2,"submitId":460,"times":250},{"returnCode":2,"submitId":460,"times":180},{"returnCode":2,"submitId":460,"times":100},{"returnCode":2,"submitId":460,"times":260},{"returnCode":2,"submitId":460,"times":250},{"returnCode":2,"submitId":460,"times":120},{"returnCode":2,"submitId":460,"times":100},{"returnCode":2,"submitId":460,"times":330},{"returnCode":2,"submitId":460,"times":340},{"returnCode":2,"submitId":460,"times":170},{"returnCode":2,"submitId":460,"times":190},{"returnCode":2,"submitId":460,"times":180},{"returnCode":2,"submitId":460,"times":330},{"returnCode":2,"submitId":460,"times":370},{"returnCode":2,"submitId":460,"times":190},{"returnCode":2,"submitId":460,"times":370},{"returnCode":2,"submitId":460,"times":380},{"returnCode":2,"submitId":460,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (461, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":461,"times":230},{"returnCode":2,"submitId":461,"times":370},{"returnCode":2,"submitId":461,"times":250},{"returnCode":2,"submitId":461,"times":180},{"returnCode":2,"submitId":461,"times":90},{"returnCode":2,"submitId":461,"times":260},{"returnCode":2,"submitId":461,"times":260},{"returnCode":2,"submitId":461,"times":120},{"returnCode":2,"submitId":461,"times":100},{"returnCode":2,"submitId":461,"times":330},{"returnCode":2,"submitId":461,"times":330},{"returnCode":2,"submitId":461,"times":170},{"returnCode":2,"submitId":461,"times":190},{"returnCode":2,"submitId":461,"times":180},{"returnCode":2,"submitId":461,"times":340},{"returnCode":2,"submitId":461,"times":360},{"returnCode":2,"submitId":461,"times":190},{"returnCode":2,"submitId":461,"times":370},{"returnCode":2,"submitId":461,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (462, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":462,"times":230},{"returnCode":2,"submitId":462,"times":370},{"returnCode":2,"submitId":462,"times":250},{"returnCode":2,"submitId":462,"times":180},{"returnCode":2,"submitId":462,"times":90},{"returnCode":2,"submitId":462,"times":260},{"returnCode":2,"submitId":462,"times":260},{"returnCode":2,"submitId":462,"times":120},{"returnCode":2,"submitId":462,"times":100},{"returnCode":2,"submitId":462,"times":330},{"returnCode":2,"submitId":462,"times":340},{"returnCode":2,"submitId":462,"times":170},{"returnCode":2,"submitId":462,"times":190},{"returnCode":2,"submitId":462,"times":180},{"returnCode":2,"submitId":462,"times":330},{"returnCode":2,"submitId":462,"times":360},{"returnCode":2,"submitId":462,"times":190},{"returnCode":2,"submitId":462,"times":370},{"returnCode":2,"submitId":462,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (463, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":463,"times":230},{"returnCode":2,"submitId":463,"times":370},{"returnCode":2,"submitId":463,"times":250},{"returnCode":2,"submitId":463,"times":180},{"returnCode":2,"submitId":463,"times":90},{"returnCode":2,"submitId":463,"times":260},{"returnCode":2,"submitId":463,"times":250},{"returnCode":2,"submitId":463,"times":120},{"returnCode":2,"submitId":463,"times":100},{"returnCode":2,"submitId":463,"times":330},{"returnCode":2,"submitId":463,"times":340},{"returnCode":2,"submitId":463,"times":170},{"returnCode":2,"submitId":463,"times":190},{"returnCode":2,"submitId":463,"times":180},{"returnCode":2,"submitId":463,"times":330},{"returnCode":2,"submitId":463,"times":360},{"returnCode":2,"submitId":463,"times":190},{"returnCode":2,"submitId":463,"times":370},{"returnCode":2,"submitId":463,"times":380},{"returnCode":2,"submitId":463,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (464, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":464,"times":230},{"returnCode":2,"submitId":464,"times":370},{"returnCode":2,"submitId":464,"times":250},{"returnCode":2,"submitId":464,"times":180},{"returnCode":2,"submitId":464,"times":90},{"returnCode":2,"submitId":464,"times":260},{"returnCode":2,"submitId":464,"times":260},{"returnCode":2,"submitId":464,"times":120},{"returnCode":2,"submitId":464,"times":100},{"returnCode":2,"submitId":464,"times":330},{"returnCode":2,"submitId":464,"times":340},{"returnCode":2,"submitId":464,"times":180},{"returnCode":2,"submitId":464,"times":190},{"returnCode":2,"submitId":464,"times":180},{"returnCode":2,"submitId":464,"times":330},{"returnCode":2,"submitId":464,"times":370},{"returnCode":2,"submitId":464,"times":190},{"returnCode":2,"submitId":464,"times":370},{"returnCode":2,"submitId":464,"times":380},{"returnCode":2,"submitId":464,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (465, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":465,"times":230},{"returnCode":2,"submitId":465,"times":370},{"returnCode":2,"submitId":465,"times":250},{"returnCode":2,"submitId":465,"times":180},{"returnCode":2,"submitId":465,"times":90},{"returnCode":2,"submitId":465,"times":260},{"returnCode":2,"submitId":465,"times":260},{"returnCode":2,"submitId":465,"times":120},{"returnCode":2,"submitId":465,"times":90},{"returnCode":2,"submitId":465,"times":330},{"returnCode":2,"submitId":465,"times":340},{"returnCode":2,"submitId":465,"times":170},{"returnCode":2,"submitId":465,"times":190},{"returnCode":2,"submitId":465,"times":180},{"returnCode":2,"submitId":465,"times":330},{"returnCode":2,"submitId":465,"times":370},{"returnCode":2,"submitId":465,"times":190},{"returnCode":2,"submitId":465,"times":370},{"returnCode":2,"submitId":465,"times":380},{"returnCode":2,"submitId":465,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (466, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":466,"times":230},{"returnCode":2,"submitId":466,"times":370},{"returnCode":2,"submitId":466,"times":250},{"returnCode":2,"submitId":466,"times":180},{"returnCode":2,"submitId":466,"times":90},{"returnCode":2,"submitId":466,"times":250},{"returnCode":2,"submitId":466,"times":250},{"returnCode":2,"submitId":466,"times":120},{"returnCode":2,"submitId":466,"times":100},{"returnCode":2,"submitId":466,"times":330},{"returnCode":2,"submitId":466,"times":340},{"returnCode":2,"submitId":466,"times":170},{"returnCode":2,"submitId":466,"times":190},{"returnCode":2,"submitId":466,"times":180},{"returnCode":2,"submitId":466,"times":330},{"returnCode":2,"submitId":466,"times":370},{"returnCode":2,"submitId":466,"times":190},{"returnCode":2,"submitId":466,"times":370},{"returnCode":2,"submitId":466,"times":380},{"returnCode":2,"submitId":466,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (467, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":467,"times":230},{"returnCode":2,"submitId":467,"times":360},{"returnCode":2,"submitId":467,"times":250},{"returnCode":2,"submitId":467,"times":180},{"returnCode":2,"submitId":467,"times":90},{"returnCode":2,"submitId":467,"times":260},{"returnCode":2,"submitId":467,"times":260},{"returnCode":2,"submitId":467,"times":120},{"returnCode":2,"submitId":467,"times":100},{"returnCode":2,"submitId":467,"times":320},{"returnCode":2,"submitId":467,"times":340},{"returnCode":2,"submitId":467,"times":170},{"returnCode":2,"submitId":467,"times":190},{"returnCode":2,"submitId":467,"times":180},{"returnCode":2,"submitId":467,"times":330},{"returnCode":2,"submitId":467,"times":360},{"returnCode":2,"submitId":467,"times":190},{"returnCode":2,"submitId":467,"times":370},{"returnCode":2,"submitId":467,"times":380},{"returnCode":2,"submitId":467,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (468, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":468,"times":230},{"returnCode":2,"submitId":468,"times":370},{"returnCode":2,"submitId":468,"times":250},{"returnCode":2,"submitId":468,"times":180},{"returnCode":2,"submitId":468,"times":90},{"returnCode":2,"submitId":468,"times":260},{"returnCode":2,"submitId":468,"times":260},{"returnCode":2,"submitId":468,"times":120},{"returnCode":2,"submitId":468,"times":100},{"returnCode":2,"submitId":468,"times":330},{"returnCode":2,"submitId":468,"times":340},{"returnCode":2,"submitId":468,"times":170},{"returnCode":2,"submitId":468,"times":190},{"returnCode":2,"submitId":468,"times":180},{"returnCode":2,"submitId":468,"times":330},{"returnCode":2,"submitId":468,"times":360},{"returnCode":2,"submitId":468,"times":190},{"returnCode":2,"submitId":468,"times":370},{"returnCode":2,"submitId":468,"times":380},{"returnCode":2,"submitId":468,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (469, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":469,"times":230},{"returnCode":2,"submitId":469,"times":370},{"returnCode":2,"submitId":469,"times":250},{"returnCode":2,"submitId":469,"times":180},{"returnCode":2,"submitId":469,"times":90},{"returnCode":2,"submitId":469,"times":260},{"returnCode":2,"submitId":469,"times":260},{"returnCode":2,"submitId":469,"times":120},{"returnCode":2,"submitId":469,"times":100},{"returnCode":2,"submitId":469,"times":330},{"returnCode":2,"submitId":469,"times":340},{"returnCode":2,"submitId":469,"times":170},{"returnCode":2,"submitId":469,"times":190},{"returnCode":2,"submitId":469,"times":180},{"returnCode":2,"submitId":469,"times":330},{"returnCode":2,"submitId":469,"times":360},{"returnCode":2,"submitId":469,"times":190},{"returnCode":2,"submitId":469,"times":370},{"returnCode":2,"submitId":469,"times":380},{"returnCode":2,"submitId":469,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (470, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":470,"times":230},{"returnCode":2,"submitId":470,"times":370},{"returnCode":2,"submitId":470,"times":250},{"returnCode":2,"submitId":470,"times":180},{"returnCode":2,"submitId":470,"times":90},{"returnCode":2,"submitId":470,"times":260},{"returnCode":2,"submitId":470,"times":260},{"returnCode":2,"submitId":470,"times":120},{"returnCode":2,"submitId":470,"times":100},{"returnCode":2,"submitId":470,"times":330},{"returnCode":2,"submitId":470,"times":340},{"returnCode":2,"submitId":470,"times":170},{"returnCode":2,"submitId":470,"times":190},{"returnCode":2,"submitId":470,"times":180},{"returnCode":2,"submitId":470,"times":330},{"returnCode":2,"submitId":470,"times":370},{"returnCode":2,"submitId":470,"times":190},{"returnCode":2,"submitId":470,"times":370},{"returnCode":2,"submitId":470,"times":380},{"returnCode":2,"submitId":470,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (471, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":471,"times":230},{"returnCode":2,"submitId":471,"times":370},{"returnCode":2,"submitId":471,"times":250},{"returnCode":2,"submitId":471,"times":180},{"returnCode":2,"submitId":471,"times":90},{"returnCode":2,"submitId":471,"times":260},{"returnCode":2,"submitId":471,"times":260},{"returnCode":2,"submitId":471,"times":110},{"returnCode":2,"submitId":471,"times":100},{"returnCode":2,"submitId":471,"times":330},{"returnCode":2,"submitId":471,"times":340},{"returnCode":2,"submitId":471,"times":170},{"returnCode":2,"submitId":471,"times":190},{"returnCode":2,"submitId":471,"times":180},{"returnCode":2,"submitId":471,"times":330},{"returnCode":2,"submitId":471,"times":360},{"returnCode":2,"submitId":471,"times":190},{"returnCode":2,"submitId":471,"times":370},{"returnCode":2,"submitId":471,"times":380},{"returnCode":2,"submitId":471,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (472, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":472,"times":230},{"returnCode":2,"submitId":472,"times":370},{"returnCode":2,"submitId":472,"times":250},{"returnCode":2,"submitId":472,"times":180},{"returnCode":2,"submitId":472,"times":90},{"returnCode":2,"submitId":472,"times":260},{"returnCode":2,"submitId":472,"times":250},{"returnCode":2,"submitId":472,"times":120},{"returnCode":2,"submitId":472,"times":100},{"returnCode":2,"submitId":472,"times":330},{"returnCode":2,"submitId":472,"times":340},{"returnCode":2,"submitId":472,"times":170},{"returnCode":2,"submitId":472,"times":190},{"returnCode":2,"submitId":472,"times":180},{"returnCode":2,"submitId":472,"times":330},{"returnCode":2,"submitId":472,"times":360},{"returnCode":2,"submitId":472,"times":190},{"returnCode":2,"submitId":472,"times":370},{"returnCode":2,"submitId":472,"times":380},{"returnCode":2,"submitId":472,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (473, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":473,"times":230},{"returnCode":2,"submitId":473,"times":360},{"returnCode":2,"submitId":473,"times":250},{"returnCode":2,"submitId":473,"times":180},{"returnCode":2,"submitId":473,"times":90},{"returnCode":2,"submitId":473,"times":250},{"returnCode":2,"submitId":473,"times":250},{"returnCode":2,"submitId":473,"times":120},{"returnCode":2,"submitId":473,"times":100},{"returnCode":2,"submitId":473,"times":330},{"returnCode":2,"submitId":473,"times":330},{"returnCode":2,"submitId":473,"times":170},{"returnCode":2,"submitId":473,"times":190},{"returnCode":2,"submitId":473,"times":180},{"returnCode":2,"submitId":473,"times":330},{"returnCode":2,"submitId":473,"times":360},{"returnCode":2,"submitId":473,"times":190},{"returnCode":2,"submitId":473,"times":370},{"returnCode":2,"submitId":473,"times":380},{"returnCode":2,"submitId":473,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (474, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":474,"times":230},{"returnCode":2,"submitId":474,"times":370},{"returnCode":2,"submitId":474,"times":250},{"returnCode":2,"submitId":474,"times":180},{"returnCode":2,"submitId":474,"times":90},{"returnCode":2,"submitId":474,"times":260},{"returnCode":2,"submitId":474,"times":250},{"returnCode":2,"submitId":474,"times":120},{"returnCode":2,"submitId":474,"times":100},{"returnCode":2,"submitId":474,"times":320},{"returnCode":2,"submitId":474,"times":340},{"returnCode":2,"submitId":474,"times":170},{"returnCode":2,"submitId":474,"times":190},{"returnCode":2,"submitId":474,"times":180},{"returnCode":2,"submitId":474,"times":330},{"returnCode":2,"submitId":474,"times":360},{"returnCode":2,"submitId":474,"times":190},{"returnCode":2,"submitId":474,"times":370},{"returnCode":2,"submitId":474,"times":380},{"returnCode":2,"submitId":474,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (475, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":475,"times":230},{"returnCode":2,"submitId":475,"times":370},{"returnCode":2,"submitId":475,"times":250},{"returnCode":2,"submitId":475,"times":180},{"returnCode":2,"submitId":475,"times":90},{"returnCode":2,"submitId":475,"times":250},{"returnCode":2,"submitId":475,"times":250},{"returnCode":2,"submitId":475,"times":120},{"returnCode":2,"submitId":475,"times":100},{"returnCode":2,"submitId":475,"times":330},{"returnCode":2,"submitId":475,"times":340},{"returnCode":2,"submitId":475,"times":170},{"returnCode":2,"submitId":475,"times":190},{"returnCode":2,"submitId":475,"times":180},{"returnCode":2,"submitId":475,"times":330},{"returnCode":2,"submitId":475,"times":370},{"returnCode":2,"submitId":475,"times":190},{"returnCode":2,"submitId":475,"times":370},{"returnCode":2,"submitId":475,"times":380},{"returnCode":2,"submitId":475,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (476, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":476,"times":230},{"returnCode":2,"submitId":476,"times":370},{"returnCode":2,"submitId":476,"times":250},{"returnCode":2,"submitId":476,"times":180},{"returnCode":2,"submitId":476,"times":90},{"returnCode":2,"submitId":476,"times":260},{"returnCode":2,"submitId":476,"times":260},{"returnCode":2,"submitId":476,"times":120},{"returnCode":2,"submitId":476,"times":100},{"returnCode":2,"submitId":476,"times":330},{"returnCode":2,"submitId":476,"times":340},{"returnCode":2,"submitId":476,"times":170},{"returnCode":2,"submitId":476,"times":190},{"returnCode":2,"submitId":476,"times":180},{"returnCode":2,"submitId":476,"times":330},{"returnCode":2,"submitId":476,"times":360},{"returnCode":2,"submitId":476,"times":190},{"returnCode":2,"submitId":476,"times":370},{"returnCode":2,"submitId":476,"times":380},{"returnCode":2,"submitId":476,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (477, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":477,"times":230},{"returnCode":2,"submitId":477,"times":370},{"returnCode":2,"submitId":477,"times":250},{"returnCode":2,"submitId":477,"times":180},{"returnCode":2,"submitId":477,"times":90},{"returnCode":2,"submitId":477,"times":260},{"returnCode":2,"submitId":477,"times":250},{"returnCode":2,"submitId":477,"times":120},{"returnCode":2,"submitId":477,"times":100},{"returnCode":2,"submitId":477,"times":330},{"returnCode":2,"submitId":477,"times":340},{"returnCode":2,"submitId":477,"times":170},{"returnCode":2,"submitId":477,"times":190},{"returnCode":2,"submitId":477,"times":180},{"returnCode":2,"submitId":477,"times":330},{"returnCode":2,"submitId":477,"times":360},{"returnCode":2,"submitId":477,"times":190},{"returnCode":2,"submitId":477,"times":370},{"returnCode":2,"submitId":477,"times":380},{"returnCode":2,"submitId":477,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (478, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":478,"times":230},{"returnCode":2,"submitId":478,"times":370},{"returnCode":2,"submitId":478,"times":250},{"returnCode":2,"submitId":478,"times":180},{"returnCode":2,"submitId":478,"times":90},{"returnCode":2,"submitId":478,"times":260},{"returnCode":2,"submitId":478,"times":260},{"returnCode":2,"submitId":478,"times":120},{"returnCode":2,"submitId":478,"times":100},{"returnCode":2,"submitId":478,"times":330},{"returnCode":2,"submitId":478,"times":340},{"returnCode":2,"submitId":478,"times":170},{"returnCode":2,"submitId":478,"times":190},{"returnCode":2,"submitId":478,"times":190},{"returnCode":2,"submitId":478,"times":330},{"returnCode":2,"submitId":478,"times":360},{"returnCode":2,"submitId":478,"times":190},{"returnCode":2,"submitId":478,"times":370},{"returnCode":2,"submitId":478,"times":380},{"returnCode":2,"submitId":478,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (479, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":479,"times":230},{"returnCode":2,"submitId":479,"times":380},{"returnCode":2,"submitId":479,"times":260},{"returnCode":2,"submitId":479,"times":180},{"returnCode":2,"submitId":479,"times":90},{"returnCode":2,"submitId":479,"times":260},{"returnCode":2,"submitId":479,"times":260},{"returnCode":2,"submitId":479,"times":110},{"returnCode":2,"submitId":479,"times":100},{"returnCode":2,"submitId":479,"times":330},{"returnCode":2,"submitId":479,"times":340},{"returnCode":2,"submitId":479,"times":170},{"returnCode":2,"submitId":479,"times":190},{"returnCode":2,"submitId":479,"times":180},{"returnCode":2,"submitId":479,"times":330},{"returnCode":2,"submitId":479,"times":360},{"returnCode":2,"submitId":479,"times":190},{"returnCode":2,"submitId":479,"times":370},{"returnCode":2,"submitId":479,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (480, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":480,"times":230},{"returnCode":2,"submitId":480,"times":370},{"returnCode":2,"submitId":480,"times":250},{"returnCode":2,"submitId":480,"times":180},{"returnCode":2,"submitId":480,"times":90},{"returnCode":2,"submitId":480,"times":250},{"returnCode":2,"submitId":480,"times":260},{"returnCode":2,"submitId":480,"times":120},{"returnCode":2,"submitId":480,"times":100},{"returnCode":2,"submitId":480,"times":330},{"returnCode":2,"submitId":480,"times":330},{"returnCode":2,"submitId":480,"times":170},{"returnCode":2,"submitId":480,"times":190},{"returnCode":2,"submitId":480,"times":180},{"returnCode":2,"submitId":480,"times":330},{"returnCode":2,"submitId":480,"times":360},{"returnCode":2,"submitId":480,"times":190},{"returnCode":2,"submitId":480,"times":370},{"returnCode":2,"submitId":480,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (481, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":481,"times":230},{"returnCode":2,"submitId":481,"times":370},{"returnCode":2,"submitId":481,"times":250},{"returnCode":2,"submitId":481,"times":190},{"returnCode":2,"submitId":481,"times":90},{"returnCode":2,"submitId":481,"times":260},{"returnCode":2,"submitId":481,"times":250},{"returnCode":2,"submitId":481,"times":120},{"returnCode":2,"submitId":481,"times":100},{"returnCode":2,"submitId":481,"times":330},{"returnCode":2,"submitId":481,"times":340},{"returnCode":2,"submitId":481,"times":170},{"returnCode":2,"submitId":481,"times":190},{"returnCode":2,"submitId":481,"times":180},{"returnCode":2,"submitId":481,"times":330},{"returnCode":2,"submitId":481,"times":360},{"returnCode":2,"submitId":481,"times":190},{"returnCode":2,"submitId":481,"times":370},{"returnCode":2,"submitId":481,"times":380},{"returnCode":2,"submitId":481,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (482, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":482,"times":230},{"returnCode":2,"submitId":482,"times":370},{"returnCode":2,"submitId":482,"times":250},{"returnCode":2,"submitId":482,"times":180},{"returnCode":2,"submitId":482,"times":90},{"returnCode":2,"submitId":482,"times":260},{"returnCode":2,"submitId":482,"times":250},{"returnCode":2,"submitId":482,"times":120},{"returnCode":2,"submitId":482,"times":100},{"returnCode":2,"submitId":482,"times":330},{"returnCode":2,"submitId":482,"times":340},{"returnCode":2,"submitId":482,"times":180},{"returnCode":2,"submitId":482,"times":190},{"returnCode":2,"submitId":482,"times":180},{"returnCode":2,"submitId":482,"times":330},{"returnCode":2,"submitId":482,"times":360},{"returnCode":2,"submitId":482,"times":190},{"returnCode":2,"submitId":482,"times":370},{"returnCode":2,"submitId":482,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (483, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":483,"times":230},{"returnCode":2,"submitId":483,"times":370},{"returnCode":2,"submitId":483,"times":250},{"returnCode":2,"submitId":483,"times":180},{"returnCode":2,"submitId":483,"times":90},{"returnCode":2,"submitId":483,"times":250},{"returnCode":2,"submitId":483,"times":250},{"returnCode":2,"submitId":483,"times":120},{"returnCode":2,"submitId":483,"times":100},{"returnCode":2,"submitId":483,"times":330},{"returnCode":2,"submitId":483,"times":340},{"returnCode":2,"submitId":483,"times":170},{"returnCode":2,"submitId":483,"times":190},{"returnCode":2,"submitId":483,"times":190},{"returnCode":2,"submitId":483,"times":330},{"returnCode":2,"submitId":483,"times":360},{"returnCode":2,"submitId":483,"times":190},{"returnCode":2,"submitId":483,"times":370},{"returnCode":2,"submitId":483,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (484, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":484,"times":230},{"returnCode":2,"submitId":484,"times":360},{"returnCode":2,"submitId":484,"times":260},{"returnCode":2,"submitId":484,"times":180},{"returnCode":2,"submitId":484,"times":90},{"returnCode":2,"submitId":484,"times":250},{"returnCode":2,"submitId":484,"times":270},{"returnCode":2,"submitId":484,"times":120},{"returnCode":2,"submitId":484,"times":100},{"returnCode":2,"submitId":484,"times":330},{"returnCode":2,"submitId":484,"times":340},{"returnCode":2,"submitId":484,"times":170},{"returnCode":2,"submitId":484,"times":190},{"returnCode":2,"submitId":484,"times":180},{"returnCode":2,"submitId":484,"times":330},{"returnCode":2,"submitId":484,"times":360},{"returnCode":2,"submitId":484,"times":190},{"returnCode":2,"submitId":484,"times":370},{"returnCode":2,"submitId":484,"times":380},{"returnCode":2,"submitId":484,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (485, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":485,"times":230},{"returnCode":2,"submitId":485,"times":370},{"returnCode":2,"submitId":485,"times":250},{"returnCode":2,"submitId":485,"times":180},{"returnCode":2,"submitId":485,"times":90},{"returnCode":2,"submitId":485,"times":260},{"returnCode":2,"submitId":485,"times":250},{"returnCode":2,"submitId":485,"times":110},{"returnCode":2,"submitId":485,"times":100},{"returnCode":2,"submitId":485,"times":320},{"returnCode":2,"submitId":485,"times":340},{"returnCode":2,"submitId":485,"times":170},{"returnCode":2,"submitId":485,"times":190},{"returnCode":2,"submitId":485,"times":180},{"returnCode":2,"submitId":485,"times":330},{"returnCode":2,"submitId":485,"times":360},{"returnCode":2,"submitId":485,"times":190},{"returnCode":2,"submitId":485,"times":380},{"returnCode":2,"submitId":485,"times":380},{"returnCode":2,"submitId":485,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (486, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":486,"times":230},{"returnCode":2,"submitId":486,"times":370},{"returnCode":2,"submitId":486,"times":250},{"returnCode":2,"submitId":486,"times":180},{"returnCode":2,"submitId":486,"times":90},{"returnCode":2,"submitId":486,"times":260},{"returnCode":2,"submitId":486,"times":250},{"returnCode":2,"submitId":486,"times":120},{"returnCode":2,"submitId":486,"times":90},{"returnCode":2,"submitId":486,"times":330},{"returnCode":2,"submitId":486,"times":340},{"returnCode":2,"submitId":486,"times":170},{"returnCode":2,"submitId":486,"times":190},{"returnCode":2,"submitId":486,"times":180},{"returnCode":2,"submitId":486,"times":330},{"returnCode":2,"submitId":486,"times":370},{"returnCode":2,"submitId":486,"times":190},{"returnCode":2,"submitId":486,"times":390},{"returnCode":2,"submitId":486,"times":380},{"returnCode":2,"submitId":486,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (487, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":487,"times":230},{"returnCode":2,"submitId":487,"times":370},{"returnCode":2,"submitId":487,"times":250},{"returnCode":2,"submitId":487,"times":180},{"returnCode":2,"submitId":487,"times":100},{"returnCode":2,"submitId":487,"times":260},{"returnCode":2,"submitId":487,"times":260},{"returnCode":2,"submitId":487,"times":120},{"returnCode":2,"submitId":487,"times":100},{"returnCode":2,"submitId":487,"times":330},{"returnCode":2,"submitId":487,"times":340},{"returnCode":2,"submitId":487,"times":170},{"returnCode":2,"submitId":487,"times":190},{"returnCode":2,"submitId":487,"times":180},{"returnCode":2,"submitId":487,"times":330},{"returnCode":2,"submitId":487,"times":370},{"returnCode":2,"submitId":487,"times":190},{"returnCode":2,"submitId":487,"times":370},{"returnCode":2,"submitId":487,"times":380},{"returnCode":2,"submitId":487,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (488, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":488,"times":230},{"returnCode":2,"submitId":488,"times":370},{"returnCode":2,"submitId":488,"times":250},{"returnCode":2,"submitId":488,"times":180},{"returnCode":2,"submitId":488,"times":90},{"returnCode":2,"submitId":488,"times":260},{"returnCode":2,"submitId":488,"times":250},{"returnCode":2,"submitId":488,"times":120},{"returnCode":2,"submitId":488,"times":100},{"returnCode":2,"submitId":488,"times":330},{"returnCode":2,"submitId":488,"times":340},{"returnCode":2,"submitId":488,"times":170},{"returnCode":2,"submitId":488,"times":190},{"returnCode":2,"submitId":488,"times":180},{"returnCode":2,"submitId":488,"times":330},{"returnCode":2,"submitId":488,"times":360},{"returnCode":2,"submitId":488,"times":190},{"returnCode":2,"submitId":488,"times":370},{"returnCode":2,"submitId":488,"times":370},{"returnCode":2,"submitId":488,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (489, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":489,"times":230},{"returnCode":2,"submitId":489,"times":370},{"returnCode":2,"submitId":489,"times":250},{"returnCode":2,"submitId":489,"times":180},{"returnCode":2,"submitId":489,"times":90},{"returnCode":2,"submitId":489,"times":260},{"returnCode":2,"submitId":489,"times":260},{"returnCode":2,"submitId":489,"times":120},{"returnCode":2,"submitId":489,"times":100},{"returnCode":2,"submitId":489,"times":330},{"returnCode":2,"submitId":489,"times":340},{"returnCode":2,"submitId":489,"times":170},{"returnCode":2,"submitId":489,"times":190},{"returnCode":2,"submitId":489,"times":180},{"returnCode":2,"submitId":489,"times":330},{"returnCode":2,"submitId":489,"times":360},{"returnCode":2,"submitId":489,"times":190},{"returnCode":2,"submitId":489,"times":380},{"returnCode":2,"submitId":489,"times":380},{"returnCode":2,"submitId":489,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (490, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":490,"times":230},{"returnCode":2,"submitId":490,"times":370},{"returnCode":2,"submitId":490,"times":250},{"returnCode":2,"submitId":490,"times":180},{"returnCode":2,"submitId":490,"times":90},{"returnCode":2,"submitId":490,"times":250},{"returnCode":2,"submitId":490,"times":250},{"returnCode":2,"submitId":490,"times":120},{"returnCode":2,"submitId":490,"times":100},{"returnCode":2,"submitId":490,"times":330},{"returnCode":2,"submitId":490,"times":340},{"returnCode":2,"submitId":490,"times":170},{"returnCode":2,"submitId":490,"times":190},{"returnCode":2,"submitId":490,"times":180},{"returnCode":2,"submitId":490,"times":330},{"returnCode":2,"submitId":490,"times":370},{"returnCode":2,"submitId":490,"times":190},{"returnCode":2,"submitId":490,"times":370},{"returnCode":2,"submitId":490,"times":370}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (491, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":491,"times":230},{"returnCode":2,"submitId":491,"times":370},{"returnCode":2,"submitId":491,"times":250},{"returnCode":2,"submitId":491,"times":180},{"returnCode":2,"submitId":491,"times":90},{"returnCode":2,"submitId":491,"times":260},{"returnCode":2,"submitId":491,"times":260},{"returnCode":2,"submitId":491,"times":120},{"returnCode":2,"submitId":491,"times":100},{"returnCode":2,"submitId":491,"times":330},{"returnCode":2,"submitId":491,"times":350},{"returnCode":2,"submitId":491,"times":170},{"returnCode":2,"submitId":491,"times":190},{"returnCode":2,"submitId":491,"times":180},{"returnCode":2,"submitId":491,"times":330},{"returnCode":2,"submitId":491,"times":360},{"returnCode":2,"submitId":491,"times":190},{"returnCode":2,"submitId":491,"times":370},{"returnCode":2,"submitId":491,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (492, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":492,"times":230},{"returnCode":2,"submitId":492,"times":370},{"returnCode":2,"submitId":492,"times":250},{"returnCode":2,"submitId":492,"times":180},{"returnCode":2,"submitId":492,"times":90},{"returnCode":2,"submitId":492,"times":260},{"returnCode":2,"submitId":492,"times":260},{"returnCode":2,"submitId":492,"times":120},{"returnCode":2,"submitId":492,"times":100},{"returnCode":2,"submitId":492,"times":330},{"returnCode":2,"submitId":492,"times":340},{"returnCode":2,"submitId":492,"times":170},{"returnCode":2,"submitId":492,"times":190},{"returnCode":2,"submitId":492,"times":180},{"returnCode":2,"submitId":492,"times":340},{"returnCode":2,"submitId":492,"times":370},{"returnCode":2,"submitId":492,"times":190},{"returnCode":2,"submitId":492,"times":370},{"returnCode":2,"submitId":492,"times":380},{"returnCode":2,"submitId":492,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (493, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 410, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":493,"times":250},{"returnCode":2,"submitId":493,"times":380},{"returnCode":2,"submitId":493,"times":270},{"returnCode":2,"submitId":493,"times":190},{"returnCode":2,"submitId":493,"times":100},{"returnCode":2,"submitId":493,"times":270},{"returnCode":2,"submitId":493,"times":270},{"returnCode":2,"submitId":493,"times":120},{"returnCode":2,"submitId":493,"times":110},{"returnCode":2,"submitId":493,"times":350},{"returnCode":2,"submitId":493,"times":340},{"returnCode":2,"submitId":493,"times":190},{"returnCode":2,"submitId":493,"times":190},{"returnCode":2,"submitId":493,"times":190},{"returnCode":2,"submitId":493,"times":360},{"returnCode":2,"submitId":493,"times":390},{"returnCode":2,"submitId":493,"times":200},{"returnCode":2,"submitId":493,"times":410},{"returnCode":2,"submitId":493,"times":400},{"returnCode":2,"submitId":493,"times":130}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (494, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":494,"times":230},{"returnCode":2,"submitId":494,"times":370},{"returnCode":2,"submitId":494,"times":250},{"returnCode":2,"submitId":494,"times":180},{"returnCode":2,"submitId":494,"times":90},{"returnCode":2,"submitId":494,"times":260},{"returnCode":2,"submitId":494,"times":250},{"returnCode":2,"submitId":494,"times":120},{"returnCode":2,"submitId":494,"times":100},{"returnCode":2,"submitId":494,"times":330},{"returnCode":2,"submitId":494,"times":340},{"returnCode":2,"submitId":494,"times":170},{"returnCode":2,"submitId":494,"times":190},{"returnCode":2,"submitId":494,"times":180},{"returnCode":2,"submitId":494,"times":330},{"returnCode":2,"submitId":494,"times":360},{"returnCode":2,"submitId":494,"times":190},{"returnCode":2,"submitId":494,"times":370},{"returnCode":2,"submitId":494,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (495, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":495,"times":230},{"returnCode":2,"submitId":495,"times":370},{"returnCode":2,"submitId":495,"times":250},{"returnCode":2,"submitId":495,"times":180},{"returnCode":2,"submitId":495,"times":90},{"returnCode":2,"submitId":495,"times":260},{"returnCode":2,"submitId":495,"times":260},{"returnCode":2,"submitId":495,"times":120},{"returnCode":2,"submitId":495,"times":100},{"returnCode":2,"submitId":495,"times":330},{"returnCode":2,"submitId":495,"times":340},{"returnCode":2,"submitId":495,"times":170},{"returnCode":2,"submitId":495,"times":190},{"returnCode":2,"submitId":495,"times":180},{"returnCode":2,"submitId":495,"times":330},{"returnCode":2,"submitId":495,"times":370},{"returnCode":2,"submitId":495,"times":190},{"returnCode":2,"submitId":495,"times":370},{"returnCode":2,"submitId":495,"times":380},{"returnCode":2,"submitId":495,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (496, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":496,"times":230},{"returnCode":2,"submitId":496,"times":370},{"returnCode":2,"submitId":496,"times":250},{"returnCode":2,"submitId":496,"times":180},{"returnCode":2,"submitId":496,"times":90},{"returnCode":2,"submitId":496,"times":260},{"returnCode":2,"submitId":496,"times":250},{"returnCode":2,"submitId":496,"times":120},{"returnCode":2,"submitId":496,"times":100},{"returnCode":2,"submitId":496,"times":330},{"returnCode":2,"submitId":496,"times":340},{"returnCode":2,"submitId":496,"times":190},{"returnCode":2,"submitId":496,"times":200},{"returnCode":2,"submitId":496,"times":190},{"returnCode":2,"submitId":496,"times":340},{"returnCode":2,"submitId":496,"times":380},{"returnCode":2,"submitId":496,"times":200},{"returnCode":2,"submitId":496,"times":390},{"returnCode":2,"submitId":496,"times":390}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (497, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":497,"times":240},{"returnCode":2,"submitId":497,"times":380},{"returnCode":2,"submitId":497,"times":270},{"returnCode":2,"submitId":497,"times":180},{"returnCode":2,"submitId":497,"times":90},{"returnCode":2,"submitId":497,"times":280},{"returnCode":2,"submitId":497,"times":280},{"returnCode":2,"submitId":497,"times":120},{"returnCode":2,"submitId":497,"times":100},{"returnCode":2,"submitId":497,"times":340},{"returnCode":2,"submitId":497,"times":360},{"returnCode":2,"submitId":497,"times":180},{"returnCode":2,"submitId":497,"times":200},{"returnCode":2,"submitId":497,"times":190},{"returnCode":2,"submitId":497,"times":350},{"returnCode":2,"submitId":497,"times":380},{"returnCode":2,"submitId":497,"times":200},{"returnCode":2,"submitId":497,"times":390},{"returnCode":2,"submitId":497,"times":390},{"returnCode":2,"submitId":497,"times":130}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (498, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":498,"times":230},{"returnCode":2,"submitId":498,"times":370},{"returnCode":2,"submitId":498,"times":250},{"returnCode":2,"submitId":498,"times":260},{"returnCode":2,"submitId":498,"times":90},{"returnCode":2,"submitId":498,"times":260},{"returnCode":2,"submitId":498,"times":260},{"returnCode":2,"submitId":498,"times":120},{"returnCode":2,"submitId":498,"times":100},{"returnCode":2,"submitId":498,"times":330},{"returnCode":2,"submitId":498,"times":340},{"returnCode":2,"submitId":498,"times":170},{"returnCode":2,"submitId":498,"times":190},{"returnCode":2,"submitId":498,"times":180},{"returnCode":2,"submitId":498,"times":330},{"returnCode":2,"submitId":498,"times":370},{"returnCode":2,"submitId":498,"times":190},{"returnCode":2,"submitId":498,"times":370},{"returnCode":2,"submitId":498,"times":380},{"returnCode":2,"submitId":498,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (499, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":499,"times":230},{"returnCode":2,"submitId":499,"times":370},{"returnCode":2,"submitId":499,"times":250},{"returnCode":2,"submitId":499,"times":180},{"returnCode":2,"submitId":499,"times":90},{"returnCode":2,"submitId":499,"times":260},{"returnCode":2,"submitId":499,"times":250},{"returnCode":2,"submitId":499,"times":130},{"returnCode":2,"submitId":499,"times":100},{"returnCode":2,"submitId":499,"times":330},{"returnCode":2,"submitId":499,"times":340},{"returnCode":2,"submitId":499,"times":170},{"returnCode":2,"submitId":499,"times":200},{"returnCode":2,"submitId":499,"times":180},{"returnCode":2,"submitId":499,"times":330},{"returnCode":2,"submitId":499,"times":370},{"returnCode":2,"submitId":499,"times":190},{"returnCode":2,"submitId":499,"times":370},{"returnCode":2,"submitId":499,"times":370},{"returnCode":2,"submitId":499,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (500, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":500,"times":230},{"returnCode":2,"submitId":500,"times":370},{"returnCode":2,"submitId":500,"times":250},{"returnCode":2,"submitId":500,"times":180},{"returnCode":2,"submitId":500,"times":90},{"returnCode":2,"submitId":500,"times":260},{"returnCode":2,"submitId":500,"times":260},{"returnCode":2,"submitId":500,"times":120},{"returnCode":2,"submitId":500,"times":90},{"returnCode":2,"submitId":500,"times":330},{"returnCode":2,"submitId":500,"times":340},{"returnCode":2,"submitId":500,"times":170},{"returnCode":2,"submitId":500,"times":190},{"returnCode":2,"submitId":500,"times":180},{"returnCode":2,"submitId":500,"times":330},{"returnCode":2,"submitId":500,"times":360},{"returnCode":2,"submitId":500,"times":200},{"returnCode":2,"submitId":500,"times":370},{"returnCode":2,"submitId":500,"times":380},{"returnCode":2,"submitId":500,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (501, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":501,"times":230},{"returnCode":2,"submitId":501,"times":390},{"returnCode":2,"submitId":501,"times":250},{"returnCode":2,"submitId":501,"times":180},{"returnCode":2,"submitId":501,"times":90},{"returnCode":2,"submitId":501,"times":260},{"returnCode":2,"submitId":501,"times":260},{"returnCode":2,"submitId":501,"times":120},{"returnCode":2,"submitId":501,"times":120},{"returnCode":2,"submitId":501,"times":330},{"returnCode":2,"submitId":501,"times":340},{"returnCode":2,"submitId":501,"times":170},{"returnCode":2,"submitId":501,"times":210},{"returnCode":2,"submitId":501,"times":180},{"returnCode":2,"submitId":501,"times":330},{"returnCode":2,"submitId":501,"times":360},{"returnCode":2,"submitId":501,"times":190},{"returnCode":2,"submitId":501,"times":370},{"returnCode":2,"submitId":501,"times":380},{"returnCode":2,"submitId":501,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (502, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":502,"times":230},{"returnCode":2,"submitId":502,"times":370},{"returnCode":2,"submitId":502,"times":250},{"returnCode":2,"submitId":502,"times":180},{"returnCode":2,"submitId":502,"times":90},{"returnCode":2,"submitId":502,"times":260},{"returnCode":2,"submitId":502,"times":250},{"returnCode":2,"submitId":502,"times":120},{"returnCode":2,"submitId":502,"times":100},{"returnCode":2,"submitId":502,"times":330},{"returnCode":2,"submitId":502,"times":340},{"returnCode":2,"submitId":502,"times":170},{"returnCode":2,"submitId":502,"times":190},{"returnCode":2,"submitId":502,"times":180},{"returnCode":2,"submitId":502,"times":330},{"returnCode":2,"submitId":502,"times":380},{"returnCode":2,"submitId":502,"times":190},{"returnCode":2,"submitId":502,"times":370},{"returnCode":2,"submitId":502,"times":370},{"returnCode":2,"submitId":502,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (503, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":503,"times":230},{"returnCode":2,"submitId":503,"times":370},{"returnCode":2,"submitId":503,"times":260},{"returnCode":2,"submitId":503,"times":180},{"returnCode":2,"submitId":503,"times":90},{"returnCode":2,"submitId":503,"times":260},{"returnCode":2,"submitId":503,"times":250},{"returnCode":2,"submitId":503,"times":120},{"returnCode":2,"submitId":503,"times":100},{"returnCode":2,"submitId":503,"times":330},{"returnCode":2,"submitId":503,"times":330},{"returnCode":2,"submitId":503,"times":170},{"returnCode":2,"submitId":503,"times":190},{"returnCode":2,"submitId":503,"times":180},{"returnCode":2,"submitId":503,"times":330},{"returnCode":2,"submitId":503,"times":370},{"returnCode":2,"submitId":503,"times":190},{"returnCode":2,"submitId":503,"times":370},{"returnCode":2,"submitId":503,"times":380},{"returnCode":2,"submitId":503,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (504, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":504,"times":230},{"returnCode":2,"submitId":504,"times":370},{"returnCode":2,"submitId":504,"times":250},{"returnCode":2,"submitId":504,"times":180},{"returnCode":2,"submitId":504,"times":90},{"returnCode":2,"submitId":504,"times":260},{"returnCode":2,"submitId":504,"times":260},{"returnCode":2,"submitId":504,"times":120},{"returnCode":2,"submitId":504,"times":100},{"returnCode":2,"submitId":504,"times":330},{"returnCode":2,"submitId":504,"times":340},{"returnCode":2,"submitId":504,"times":170},{"returnCode":2,"submitId":504,"times":190},{"returnCode":2,"submitId":504,"times":180},{"returnCode":2,"submitId":504,"times":330},{"returnCode":2,"submitId":504,"times":360},{"returnCode":2,"submitId":504,"times":190},{"returnCode":2,"submitId":504,"times":370},{"returnCode":2,"submitId":504,"times":370}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (505, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":505,"times":230},{"returnCode":2,"submitId":505,"times":370},{"returnCode":2,"submitId":505,"times":250},{"returnCode":2,"submitId":505,"times":180},{"returnCode":2,"submitId":505,"times":90},{"returnCode":2,"submitId":505,"times":260},{"returnCode":2,"submitId":505,"times":260},{"returnCode":2,"submitId":505,"times":120},{"returnCode":2,"submitId":505,"times":100},{"returnCode":2,"submitId":505,"times":330},{"returnCode":2,"submitId":505,"times":330},{"returnCode":2,"submitId":505,"times":170},{"returnCode":2,"submitId":505,"times":190},{"returnCode":2,"submitId":505,"times":190},{"returnCode":2,"submitId":505,"times":330},{"returnCode":2,"submitId":505,"times":360},{"returnCode":2,"submitId":505,"times":190},{"returnCode":2,"submitId":505,"times":370},{"returnCode":2,"submitId":505,"times":380},{"returnCode":2,"submitId":505,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (506, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":506,"times":230},{"returnCode":2,"submitId":506,"times":370},{"returnCode":2,"submitId":506,"times":250},{"returnCode":2,"submitId":506,"times":180},{"returnCode":2,"submitId":506,"times":90},{"returnCode":2,"submitId":506,"times":260},{"returnCode":2,"submitId":506,"times":250},{"returnCode":2,"submitId":506,"times":120},{"returnCode":2,"submitId":506,"times":100},{"returnCode":2,"submitId":506,"times":330},{"returnCode":2,"submitId":506,"times":350},{"returnCode":2,"submitId":506,"times":170},{"returnCode":2,"submitId":506,"times":190},{"returnCode":2,"submitId":506,"times":180},{"returnCode":2,"submitId":506,"times":330},{"returnCode":2,"submitId":506,"times":370},{"returnCode":2,"submitId":506,"times":190},{"returnCode":2,"submitId":506,"times":370},{"returnCode":2,"submitId":506,"times":380},{"returnCode":2,"submitId":506,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (507, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":507,"times":230},{"returnCode":2,"submitId":507,"times":370},{"returnCode":2,"submitId":507,"times":250},{"returnCode":2,"submitId":507,"times":180},{"returnCode":2,"submitId":507,"times":90},{"returnCode":2,"submitId":507,"times":260},{"returnCode":2,"submitId":507,"times":250},{"returnCode":2,"submitId":507,"times":120},{"returnCode":2,"submitId":507,"times":100},{"returnCode":2,"submitId":507,"times":330},{"returnCode":2,"submitId":507,"times":340},{"returnCode":2,"submitId":507,"times":170},{"returnCode":2,"submitId":507,"times":190},{"returnCode":2,"submitId":507,"times":180},{"returnCode":2,"submitId":507,"times":340},{"returnCode":2,"submitId":507,"times":370},{"returnCode":2,"submitId":507,"times":190},{"returnCode":2,"submitId":507,"times":370},{"returnCode":2,"submitId":507,"times":380},{"returnCode":2,"submitId":507,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (508, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":508,"times":230},{"returnCode":2,"submitId":508,"times":370},{"returnCode":2,"submitId":508,"times":250},{"returnCode":2,"submitId":508,"times":180},{"returnCode":2,"submitId":508,"times":90},{"returnCode":2,"submitId":508,"times":260},{"returnCode":2,"submitId":508,"times":260},{"returnCode":2,"submitId":508,"times":120},{"returnCode":2,"submitId":508,"times":100},{"returnCode":2,"submitId":508,"times":340},{"returnCode":2,"submitId":508,"times":340},{"returnCode":2,"submitId":508,"times":170},{"returnCode":2,"submitId":508,"times":190},{"returnCode":2,"submitId":508,"times":180},{"returnCode":2,"submitId":508,"times":330},{"returnCode":2,"submitId":508,"times":360},{"returnCode":2,"submitId":508,"times":190},{"returnCode":2,"submitId":508,"times":370},{"returnCode":2,"submitId":508,"times":390},{"returnCode":2,"submitId":508,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (509, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":509,"times":230},{"returnCode":2,"submitId":509,"times":370},{"returnCode":2,"submitId":509,"times":250},{"returnCode":2,"submitId":509,"times":180},{"returnCode":2,"submitId":509,"times":90},{"returnCode":2,"submitId":509,"times":250},{"returnCode":2,"submitId":509,"times":270},{"returnCode":2,"submitId":509,"times":120},{"returnCode":2,"submitId":509,"times":100},{"returnCode":2,"submitId":509,"times":330},{"returnCode":2,"submitId":509,"times":340},{"returnCode":2,"submitId":509,"times":170},{"returnCode":2,"submitId":509,"times":190},{"returnCode":2,"submitId":509,"times":180},{"returnCode":2,"submitId":509,"times":330},{"returnCode":2,"submitId":509,"times":370},{"returnCode":2,"submitId":509,"times":190},{"returnCode":2,"submitId":509,"times":370},{"returnCode":2,"submitId":509,"times":380},{"returnCode":2,"submitId":509,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (510, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":510,"times":230},{"returnCode":2,"submitId":510,"times":380},{"returnCode":2,"submitId":510,"times":250},{"returnCode":2,"submitId":510,"times":180},{"returnCode":2,"submitId":510,"times":90},{"returnCode":2,"submitId":510,"times":260},{"returnCode":2,"submitId":510,"times":260},{"returnCode":2,"submitId":510,"times":120},{"returnCode":2,"submitId":510,"times":100},{"returnCode":2,"submitId":510,"times":340},{"returnCode":2,"submitId":510,"times":340},{"returnCode":2,"submitId":510,"times":170},{"returnCode":2,"submitId":510,"times":190},{"returnCode":2,"submitId":510,"times":180},{"returnCode":2,"submitId":510,"times":340},{"returnCode":2,"submitId":510,"times":370},{"returnCode":2,"submitId":510,"times":190},{"returnCode":2,"submitId":510,"times":370},{"returnCode":2,"submitId":510,"times":370},{"returnCode":2,"submitId":510,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (511, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":511,"times":230},{"returnCode":2,"submitId":511,"times":370},{"returnCode":2,"submitId":511,"times":260},{"returnCode":2,"submitId":511,"times":180},{"returnCode":2,"submitId":511,"times":90},{"returnCode":2,"submitId":511,"times":260},{"returnCode":2,"submitId":511,"times":250},{"returnCode":2,"submitId":511,"times":120},{"returnCode":2,"submitId":511,"times":100},{"returnCode":2,"submitId":511,"times":350},{"returnCode":2,"submitId":511,"times":340},{"returnCode":2,"submitId":511,"times":170},{"returnCode":2,"submitId":511,"times":190},{"returnCode":2,"submitId":511,"times":180},{"returnCode":2,"submitId":511,"times":330},{"returnCode":2,"submitId":511,"times":360},{"returnCode":2,"submitId":511,"times":190},{"returnCode":2,"submitId":511,"times":380},{"returnCode":2,"submitId":511,"times":380},{"returnCode":2,"submitId":511,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (512, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":512,"times":230},{"returnCode":2,"submitId":512,"times":370},{"returnCode":2,"submitId":512,"times":250},{"returnCode":2,"submitId":512,"times":180},{"returnCode":2,"submitId":512,"times":90},{"returnCode":2,"submitId":512,"times":250},{"returnCode":2,"submitId":512,"times":260},{"returnCode":2,"submitId":512,"times":120},{"returnCode":2,"submitId":512,"times":100},{"returnCode":2,"submitId":512,"times":330},{"returnCode":2,"submitId":512,"times":340},{"returnCode":2,"submitId":512,"times":170},{"returnCode":2,"submitId":512,"times":190},{"returnCode":2,"submitId":512,"times":180},{"returnCode":2,"submitId":512,"times":340},{"returnCode":2,"submitId":512,"times":360},{"returnCode":2,"submitId":512,"times":190},{"returnCode":2,"submitId":512,"times":370},{"returnCode":2,"submitId":512,"times":380},{"returnCode":2,"submitId":512,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (513, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":513,"times":230},{"returnCode":2,"submitId":513,"times":370},{"returnCode":2,"submitId":513,"times":250},{"returnCode":2,"submitId":513,"times":180},{"returnCode":2,"submitId":513,"times":90},{"returnCode":2,"submitId":513,"times":260},{"returnCode":2,"submitId":513,"times":260},{"returnCode":2,"submitId":513,"times":120},{"returnCode":2,"submitId":513,"times":100},{"returnCode":2,"submitId":513,"times":330},{"returnCode":2,"submitId":513,"times":350},{"returnCode":2,"submitId":513,"times":180},{"returnCode":2,"submitId":513,"times":190},{"returnCode":2,"submitId":513,"times":190},{"returnCode":2,"submitId":513,"times":340},{"returnCode":2,"submitId":513,"times":360},{"returnCode":2,"submitId":513,"times":190},{"returnCode":2,"submitId":513,"times":380},{"returnCode":2,"submitId":513,"times":390},{"returnCode":2,"submitId":513,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (514, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":514,"times":230},{"returnCode":2,"submitId":514,"times":370},{"returnCode":2,"submitId":514,"times":250},{"returnCode":2,"submitId":514,"times":180},{"returnCode":2,"submitId":514,"times":90},{"returnCode":2,"submitId":514,"times":260},{"returnCode":2,"submitId":514,"times":260},{"returnCode":2,"submitId":514,"times":120},{"returnCode":2,"submitId":514,"times":100},{"returnCode":2,"submitId":514,"times":330},{"returnCode":2,"submitId":514,"times":340},{"returnCode":2,"submitId":514,"times":170},{"returnCode":2,"submitId":514,"times":190},{"returnCode":2,"submitId":514,"times":180},{"returnCode":2,"submitId":514,"times":330},{"returnCode":2,"submitId":514,"times":360},{"returnCode":2,"submitId":514,"times":190},{"returnCode":2,"submitId":514,"times":380},{"returnCode":2,"submitId":514,"times":380},{"returnCode":2,"submitId":514,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (515, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":515,"times":230},{"returnCode":2,"submitId":515,"times":370},{"returnCode":2,"submitId":515,"times":250},{"returnCode":2,"submitId":515,"times":180},{"returnCode":2,"submitId":515,"times":90},{"returnCode":2,"submitId":515,"times":260},{"returnCode":2,"submitId":515,"times":260},{"returnCode":2,"submitId":515,"times":120},{"returnCode":2,"submitId":515,"times":100},{"returnCode":2,"submitId":515,"times":330},{"returnCode":2,"submitId":515,"times":340},{"returnCode":2,"submitId":515,"times":170},{"returnCode":2,"submitId":515,"times":190},{"returnCode":2,"submitId":515,"times":180},{"returnCode":2,"submitId":515,"times":330},{"returnCode":2,"submitId":515,"times":370},{"returnCode":2,"submitId":515,"times":190},{"returnCode":2,"submitId":515,"times":370},{"returnCode":2,"submitId":515,"times":380},{"returnCode":2,"submitId":515,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (516, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":516,"times":230},{"returnCode":2,"submitId":516,"times":370},{"returnCode":2,"submitId":516,"times":250},{"returnCode":2,"submitId":516,"times":180},{"returnCode":2,"submitId":516,"times":90},{"returnCode":2,"submitId":516,"times":260},{"returnCode":2,"submitId":516,"times":260},{"returnCode":2,"submitId":516,"times":120},{"returnCode":2,"submitId":516,"times":100},{"returnCode":2,"submitId":516,"times":320},{"returnCode":2,"submitId":516,"times":340},{"returnCode":2,"submitId":516,"times":170},{"returnCode":2,"submitId":516,"times":180},{"returnCode":2,"submitId":516,"times":190},{"returnCode":2,"submitId":516,"times":330},{"returnCode":2,"submitId":516,"times":370},{"returnCode":2,"submitId":516,"times":190},{"returnCode":2,"submitId":516,"times":370},{"returnCode":2,"submitId":516,"times":380},{"returnCode":2,"submitId":516,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (517, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":517,"times":240},{"returnCode":2,"submitId":517,"times":370},{"returnCode":2,"submitId":517,"times":250},{"returnCode":2,"submitId":517,"times":180},{"returnCode":2,"submitId":517,"times":90},{"returnCode":2,"submitId":517,"times":250},{"returnCode":2,"submitId":517,"times":260},{"returnCode":2,"submitId":517,"times":120},{"returnCode":2,"submitId":517,"times":100},{"returnCode":2,"submitId":517,"times":340},{"returnCode":2,"submitId":517,"times":340},{"returnCode":2,"submitId":517,"times":170},{"returnCode":2,"submitId":517,"times":190},{"returnCode":2,"submitId":517,"times":190},{"returnCode":2,"submitId":517,"times":330},{"returnCode":2,"submitId":517,"times":360},{"returnCode":2,"submitId":517,"times":190},{"returnCode":2,"submitId":517,"times":370},{"returnCode":2,"submitId":517,"times":390},{"returnCode":2,"submitId":517,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (518, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":518,"times":230},{"returnCode":2,"submitId":518,"times":370},{"returnCode":2,"submitId":518,"times":250},{"returnCode":2,"submitId":518,"times":180},{"returnCode":2,"submitId":518,"times":90},{"returnCode":2,"submitId":518,"times":260},{"returnCode":2,"submitId":518,"times":250},{"returnCode":2,"submitId":518,"times":120},{"returnCode":2,"submitId":518,"times":100},{"returnCode":2,"submitId":518,"times":320},{"returnCode":2,"submitId":518,"times":340},{"returnCode":2,"submitId":518,"times":170},{"returnCode":2,"submitId":518,"times":190},{"returnCode":2,"submitId":518,"times":180},{"returnCode":2,"submitId":518,"times":340},{"returnCode":2,"submitId":518,"times":370},{"returnCode":2,"submitId":518,"times":190},{"returnCode":2,"submitId":518,"times":370},{"returnCode":2,"submitId":518,"times":380},{"returnCode":2,"submitId":518,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (519, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":519,"times":230},{"returnCode":2,"submitId":519,"times":370},{"returnCode":2,"submitId":519,"times":260},{"returnCode":2,"submitId":519,"times":190},{"returnCode":2,"submitId":519,"times":90},{"returnCode":2,"submitId":519,"times":260},{"returnCode":2,"submitId":519,"times":250},{"returnCode":2,"submitId":519,"times":120},{"returnCode":2,"submitId":519,"times":90},{"returnCode":2,"submitId":519,"times":330},{"returnCode":2,"submitId":519,"times":340},{"returnCode":2,"submitId":519,"times":170},{"returnCode":2,"submitId":519,"times":190},{"returnCode":2,"submitId":519,"times":180},{"returnCode":2,"submitId":519,"times":330},{"returnCode":2,"submitId":519,"times":370},{"returnCode":2,"submitId":519,"times":190},{"returnCode":2,"submitId":519,"times":370},{"returnCode":2,"submitId":519,"times":380},{"returnCode":2,"submitId":519,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (520, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":520,"times":230},{"returnCode":2,"submitId":520,"times":370},{"returnCode":2,"submitId":520,"times":250},{"returnCode":2,"submitId":520,"times":180},{"returnCode":2,"submitId":520,"times":90},{"returnCode":2,"submitId":520,"times":260},{"returnCode":2,"submitId":520,"times":250},{"returnCode":2,"submitId":520,"times":120},{"returnCode":2,"submitId":520,"times":100},{"returnCode":2,"submitId":520,"times":330},{"returnCode":2,"submitId":520,"times":340},{"returnCode":2,"submitId":520,"times":170},{"returnCode":2,"submitId":520,"times":190},{"returnCode":2,"submitId":520,"times":190},{"returnCode":2,"submitId":520,"times":330},{"returnCode":2,"submitId":520,"times":360},{"returnCode":2,"submitId":520,"times":190},{"returnCode":2,"submitId":520,"times":370},{"returnCode":2,"submitId":520,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (521, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":521,"times":230},{"returnCode":2,"submitId":521,"times":360},{"returnCode":2,"submitId":521,"times":250},{"returnCode":2,"submitId":521,"times":180},{"returnCode":2,"submitId":521,"times":90},{"returnCode":2,"submitId":521,"times":260},{"returnCode":2,"submitId":521,"times":250},{"returnCode":2,"submitId":521,"times":120},{"returnCode":2,"submitId":521,"times":90},{"returnCode":2,"submitId":521,"times":320},{"returnCode":2,"submitId":521,"times":330},{"returnCode":2,"submitId":521,"times":170},{"returnCode":2,"submitId":521,"times":190},{"returnCode":2,"submitId":521,"times":180},{"returnCode":2,"submitId":521,"times":340},{"returnCode":2,"submitId":521,"times":360},{"returnCode":2,"submitId":521,"times":190},{"returnCode":2,"submitId":521,"times":370},{"returnCode":2,"submitId":521,"times":380},{"returnCode":2,"submitId":521,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (522, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":522,"times":230},{"returnCode":2,"submitId":522,"times":360},{"returnCode":2,"submitId":522,"times":250},{"returnCode":2,"submitId":522,"times":180},{"returnCode":2,"submitId":522,"times":90},{"returnCode":2,"submitId":522,"times":260},{"returnCode":2,"submitId":522,"times":260},{"returnCode":2,"submitId":522,"times":120},{"returnCode":2,"submitId":522,"times":100},{"returnCode":2,"submitId":522,"times":330},{"returnCode":2,"submitId":522,"times":340},{"returnCode":2,"submitId":522,"times":170},{"returnCode":2,"submitId":522,"times":190},{"returnCode":2,"submitId":522,"times":190},{"returnCode":2,"submitId":522,"times":330},{"returnCode":2,"submitId":522,"times":370},{"returnCode":2,"submitId":522,"times":190},{"returnCode":2,"submitId":522,"times":370},{"returnCode":2,"submitId":522,"times":380},{"returnCode":2,"submitId":522,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (523, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":523,"times":230},{"returnCode":2,"submitId":523,"times":370},{"returnCode":2,"submitId":523,"times":250},{"returnCode":2,"submitId":523,"times":180},{"returnCode":2,"submitId":523,"times":90},{"returnCode":2,"submitId":523,"times":260},{"returnCode":2,"submitId":523,"times":250},{"returnCode":2,"submitId":523,"times":120},{"returnCode":2,"submitId":523,"times":100},{"returnCode":2,"submitId":523,"times":330},{"returnCode":2,"submitId":523,"times":340},{"returnCode":2,"submitId":523,"times":170},{"returnCode":2,"submitId":523,"times":190},{"returnCode":2,"submitId":523,"times":180},{"returnCode":2,"submitId":523,"times":320},{"returnCode":2,"submitId":523,"times":380},{"returnCode":2,"submitId":523,"times":200},{"returnCode":2,"submitId":523,"times":370},{"returnCode":2,"submitId":523,"times":380},{"returnCode":2,"submitId":523,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (524, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":524,"times":230},{"returnCode":2,"submitId":524,"times":370},{"returnCode":2,"submitId":524,"times":250},{"returnCode":2,"submitId":524,"times":180},{"returnCode":2,"submitId":524,"times":90},{"returnCode":2,"submitId":524,"times":250},{"returnCode":2,"submitId":524,"times":260},{"returnCode":2,"submitId":524,"times":120},{"returnCode":2,"submitId":524,"times":100},{"returnCode":2,"submitId":524,"times":330},{"returnCode":2,"submitId":524,"times":340},{"returnCode":2,"submitId":524,"times":170},{"returnCode":2,"submitId":524,"times":190},{"returnCode":2,"submitId":524,"times":180},{"returnCode":2,"submitId":524,"times":330},{"returnCode":2,"submitId":524,"times":370},{"returnCode":2,"submitId":524,"times":190},{"returnCode":2,"submitId":524,"times":380},{"returnCode":2,"submitId":524,"times":380},{"returnCode":2,"submitId":524,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (525, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":525,"times":230},{"returnCode":2,"submitId":525,"times":370},{"returnCode":2,"submitId":525,"times":250},{"returnCode":2,"submitId":525,"times":180},{"returnCode":2,"submitId":525,"times":90},{"returnCode":2,"submitId":525,"times":260},{"returnCode":2,"submitId":525,"times":260},{"returnCode":2,"submitId":525,"times":120},{"returnCode":2,"submitId":525,"times":100},{"returnCode":2,"submitId":525,"times":340},{"returnCode":2,"submitId":525,"times":340},{"returnCode":2,"submitId":525,"times":170},{"returnCode":2,"submitId":525,"times":190},{"returnCode":2,"submitId":525,"times":180},{"returnCode":2,"submitId":525,"times":330},{"returnCode":2,"submitId":525,"times":370},{"returnCode":2,"submitId":525,"times":190},{"returnCode":2,"submitId":525,"times":370},{"returnCode":2,"submitId":525,"times":380},{"returnCode":2,"submitId":525,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (526, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":526,"times":230},{"returnCode":2,"submitId":526,"times":380},{"returnCode":2,"submitId":526,"times":250},{"returnCode":2,"submitId":526,"times":180},{"returnCode":2,"submitId":526,"times":90},{"returnCode":2,"submitId":526,"times":260},{"returnCode":2,"submitId":526,"times":260},{"returnCode":2,"submitId":526,"times":120},{"returnCode":2,"submitId":526,"times":100},{"returnCode":2,"submitId":526,"times":350},{"returnCode":2,"submitId":526,"times":340},{"returnCode":2,"submitId":526,"times":180},{"returnCode":2,"submitId":526,"times":190},{"returnCode":2,"submitId":526,"times":180},{"returnCode":2,"submitId":526,"times":340},{"returnCode":2,"submitId":526,"times":360},{"returnCode":2,"submitId":526,"times":190},{"returnCode":2,"submitId":526,"times":370},{"returnCode":2,"submitId":526,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (527, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":527,"times":230},{"returnCode":2,"submitId":527,"times":370},{"returnCode":2,"submitId":527,"times":250},{"returnCode":2,"submitId":527,"times":190},{"returnCode":2,"submitId":527,"times":90},{"returnCode":2,"submitId":527,"times":260},{"returnCode":2,"submitId":527,"times":250},{"returnCode":2,"submitId":527,"times":120},{"returnCode":2,"submitId":527,"times":100},{"returnCode":2,"submitId":527,"times":320},{"returnCode":2,"submitId":527,"times":340},{"returnCode":2,"submitId":527,"times":170},{"returnCode":2,"submitId":527,"times":190},{"returnCode":2,"submitId":527,"times":180},{"returnCode":2,"submitId":527,"times":340},{"returnCode":2,"submitId":527,"times":370},{"returnCode":2,"submitId":527,"times":190},{"returnCode":2,"submitId":527,"times":370},{"returnCode":2,"submitId":527,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (528, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":528,"times":230},{"returnCode":2,"submitId":528,"times":370},{"returnCode":2,"submitId":528,"times":250},{"returnCode":2,"submitId":528,"times":180},{"returnCode":2,"submitId":528,"times":90},{"returnCode":2,"submitId":528,"times":260},{"returnCode":2,"submitId":528,"times":260},{"returnCode":2,"submitId":528,"times":120},{"returnCode":2,"submitId":528,"times":100},{"returnCode":2,"submitId":528,"times":330},{"returnCode":2,"submitId":528,"times":340},{"returnCode":2,"submitId":528,"times":170},{"returnCode":2,"submitId":528,"times":190},{"returnCode":2,"submitId":528,"times":180},{"returnCode":2,"submitId":528,"times":330},{"returnCode":2,"submitId":528,"times":370},{"returnCode":2,"submitId":528,"times":190},{"returnCode":2,"submitId":528,"times":380},{"returnCode":2,"submitId":528,"times":380},{"returnCode":2,"submitId":528,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (529, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 400, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":529,"times":230},{"returnCode":2,"submitId":529,"times":370},{"returnCode":2,"submitId":529,"times":250},{"returnCode":2,"submitId":529,"times":180},{"returnCode":2,"submitId":529,"times":90},{"returnCode":2,"submitId":529,"times":250},{"returnCode":2,"submitId":529,"times":250},{"returnCode":2,"submitId":529,"times":120},{"returnCode":2,"submitId":529,"times":100},{"returnCode":2,"submitId":529,"times":340},{"returnCode":2,"submitId":529,"times":340},{"returnCode":2,"submitId":529,"times":180},{"returnCode":2,"submitId":529,"times":190},{"returnCode":2,"submitId":529,"times":190},{"returnCode":2,"submitId":529,"times":370},{"returnCode":2,"submitId":529,"times":400},{"returnCode":2,"submitId":529,"times":210},{"returnCode":2,"submitId":529,"times":380},{"returnCode":2,"submitId":529,"times":380},{"returnCode":2,"submitId":529,"times":130}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (530, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 430, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":530,"times":240},{"returnCode":2,"submitId":530,"times":400},{"returnCode":2,"submitId":530,"times":270},{"returnCode":2,"submitId":530,"times":200},{"returnCode":2,"submitId":530,"times":100},{"returnCode":2,"submitId":530,"times":270},{"returnCode":2,"submitId":530,"times":270},{"returnCode":2,"submitId":530,"times":120},{"returnCode":2,"submitId":530,"times":100},{"returnCode":2,"submitId":530,"times":340},{"returnCode":2,"submitId":530,"times":370},{"returnCode":2,"submitId":530,"times":190},{"returnCode":2,"submitId":530,"times":200},{"returnCode":2,"submitId":530,"times":180},{"returnCode":2,"submitId":530,"times":420},{"returnCode":2,"submitId":530,"times":370},{"returnCode":2,"submitId":530,"times":100},{"returnCode":2,"submitId":530,"times":340},{"returnCode":2,"submitId":530,"times":370},{"returnCode":2,"submitId":530,"times":190},{"returnCode":2,"submitId":530,"times":200},{"returnCode":2,"submitId":530,"times":180},{"returnCode":2,"submitId":530,"times":420},{"returnCode":2,"submitId":530,"times":370},{"returnCode":2,"submitId":530,"times":200},{"returnCode":2,"submitId":530,"times":370}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (531, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":531,"times":230},{"returnCode":2,"submitId":531,"times":370},{"returnCode":2,"submitId":531,"times":250},{"returnCode":2,"submitId":531,"times":180},{"returnCode":2,"submitId":531,"times":90},{"returnCode":2,"submitId":531,"times":260},{"returnCode":2,"submitId":531,"times":260},{"returnCode":2,"submitId":531,"times":120},{"returnCode":2,"submitId":531,"times":100},{"returnCode":2,"submitId":531,"times":330},{"returnCode":2,"submitId":531,"times":340},{"returnCode":2,"submitId":531,"times":170},{"returnCode":2,"submitId":531,"times":190},{"returnCode":2,"submitId":531,"times":190},{"returnCode":2,"submitId":531,"times":330},{"returnCode":2,"submitId":531,"times":370},{"returnCode":2,"submitId":531,"times":190},{"returnCode":2,"submitId":531,"times":370},{"returnCode":2,"submitId":531,"times":380},{"returnCode":2,"submitId":531,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (532, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 410, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":532,"times":270},{"returnCode":2,"submitId":532,"times":210},{"returnCode":2,"submitId":532,"times":100},{"returnCode":2,"submitId":532,"times":270},{"returnCode":2,"submitId":532,"times":270}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (533, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 400, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":533,"times":250},{"returnCode":2,"submitId":533,"times":370},{"returnCode":2,"submitId":533,"times":280},{"returnCode":2,"submitId":533,"times":180},{"returnCode":2,"submitId":533,"times":280},{"returnCode":2,"submitId":533,"times":100},{"returnCode":2,"submitId":533,"times":180},{"returnCode":2,"submitId":533,"times":270},{"returnCode":2,"submitId":533,"times":120},{"returnCode":2,"submitId":533,"times":120},{"returnCode":2,"submitId":533,"times":370},{"returnCode":2,"submitId":533,"times":390},{"returnCode":2,"submitId":533,"times":180},{"returnCode":2,"submitId":533,"times":210},{"returnCode":2,"submitId":533,"times":190},{"returnCode":2,"submitId":533,"times":320},{"returnCode":2,"submitId":533,"times":370},{"returnCode":2,"submitId":533,"times":220},{"returnCode":2,"submitId":533,"times":400},{"returnCode":2,"submitId":533,"times":390},{"returnCode":2,"submitId":533,"times":110}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (534, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 430, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":534,"times":230},{"returnCode":2,"submitId":534,"times":370},{"returnCode":2,"submitId":534,"times":280},{"returnCode":2,"submitId":534,"times":180},{"returnCode":2,"submitId":534,"times":100},{"returnCode":2,"submitId":534,"times":280},{"returnCode":2,"submitId":534,"times":280},{"returnCode":2,"submitId":534,"times":120},{"returnCode":2,"submitId":534,"times":120},{"returnCode":2,"submitId":534,"times":350},{"returnCode":2,"submitId":534,"times":350},{"returnCode":2,"submitId":534,"times":180},{"returnCode":2,"submitId":534,"times":220},{"returnCode":2,"submitId":534,"times":200},{"returnCode":2,"submitId":534,"times":380},{"returnCode":2,"submitId":534,"times":410},{"returnCode":2,"submitId":534,"times":200},{"returnCode":2,"submitId":534,"times":380},{"returnCode":2,"submitId":534,"times":430},{"returnCode":2,"submitId":534,"times":380},{"returnCode":2,"submitId":534,"times":430},{"returnCode":2,"submitId":534,"times":130}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (551, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 400, null, null, '[{"returnCode":2,"submitId":551,"times":100},{"returnCode":2,"submitId":551,"times":360},{"returnCode":2,"submitId":551,"times":310},{"returnCode":2,"submitId":551,"times":170},{"returnCode":2,"submitId":551,"times":190},{"returnCode":2,"submitId":551,"times":180},{"returnCode":2,"submitId":551,"times":330},{"returnCode":2,"submitId":551,"times":360},{"returnCode":2,"submitId":551,"times":190},{"returnCode":2,"submitId":551,"times":370},{"returnCode":2,"submitId":551,"times":380},{"returnCode":2,"submitId":551,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (552, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":552,"times":230},{"returnCode":2,"submitId":552,"times":370},{"returnCode":2,"submitId":552,"times":250},{"returnCode":2,"submitId":552,"times":180},{"returnCode":2,"submitId":552,"times":90},{"returnCode":2,"submitId":552,"times":260},{"returnCode":2,"submitId":552,"times":250},{"returnCode":2,"submitId":552,"times":110},{"returnCode":2,"submitId":552,"times":100},{"returnCode":2,"submitId":552,"times":330},{"returnCode":2,"submitId":552,"times":340},{"returnCode":2,"submitId":552,"times":170},{"returnCode":2,"submitId":552,"times":190},{"returnCode":2,"submitId":552,"times":180},{"returnCode":2,"submitId":552,"times":330},{"returnCode":2,"submitId":552,"times":360},{"returnCode":2,"submitId":552,"times":190},{"returnCode":2,"submitId":552,"times":370},{"returnCode":2,"submitId":552,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (553, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":553,"times":230},{"returnCode":2,"submitId":553,"times":370},{"returnCode":2,"submitId":553,"times":250},{"returnCode":2,"submitId":553,"times":180},{"returnCode":2,"submitId":553,"times":90},{"returnCode":2,"submitId":553,"times":260},{"returnCode":2,"submitId":553,"times":250},{"returnCode":2,"submitId":553,"times":120},{"returnCode":2,"submitId":553,"times":100},{"returnCode":2,"submitId":553,"times":330},{"returnCode":2,"submitId":553,"times":340},{"returnCode":2,"submitId":553,"times":170},{"returnCode":2,"submitId":553,"times":190},{"returnCode":2,"submitId":553,"times":180},{"returnCode":2,"submitId":553,"times":340},{"returnCode":2,"submitId":553,"times":370},{"returnCode":2,"submitId":553,"times":190},{"returnCode":2,"submitId":553,"times":370},{"returnCode":2,"submitId":553,"times":380},{"returnCode":2,"submitId":553,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (554, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":554,"times":230},{"returnCode":2,"submitId":554,"times":360},{"returnCode":2,"submitId":554,"times":250},{"returnCode":2,"submitId":554,"times":180},{"returnCode":2,"submitId":554,"times":90},{"returnCode":2,"submitId":554,"times":250},{"returnCode":2,"submitId":554,"times":260},{"returnCode":2,"submitId":554,"times":120},{"returnCode":2,"submitId":554,"times":100},{"returnCode":2,"submitId":554,"times":330},{"returnCode":2,"submitId":554,"times":340},{"returnCode":2,"submitId":554,"times":170},{"returnCode":2,"submitId":554,"times":190},{"returnCode":2,"submitId":554,"times":180},{"returnCode":2,"submitId":554,"times":330},{"returnCode":2,"submitId":554,"times":360},{"returnCode":2,"submitId":554,"times":190},{"returnCode":2,"submitId":554,"times":370},{"returnCode":2,"submitId":554,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (555, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":555,"times":230},{"returnCode":2,"submitId":555,"times":370},{"returnCode":2,"submitId":555,"times":250},{"returnCode":2,"submitId":555,"times":180},{"returnCode":2,"submitId":555,"times":90},{"returnCode":2,"submitId":555,"times":260},{"returnCode":2,"submitId":555,"times":250},{"returnCode":2,"submitId":555,"times":120},{"returnCode":2,"submitId":555,"times":100},{"returnCode":2,"submitId":555,"times":330},{"returnCode":2,"submitId":555,"times":340},{"returnCode":2,"submitId":555,"times":170},{"returnCode":2,"submitId":555,"times":190},{"returnCode":2,"submitId":555,"times":180},{"returnCode":2,"submitId":555,"times":330},{"returnCode":2,"submitId":555,"times":370},{"returnCode":2,"submitId":555,"times":190},{"returnCode":2,"submitId":555,"times":370},{"returnCode":2,"submitId":555,"times":380},{"returnCode":2,"submitId":555,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (556, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":556,"times":230},{"returnCode":2,"submitId":556,"times":370},{"returnCode":2,"submitId":556,"times":250},{"returnCode":2,"submitId":556,"times":180},{"returnCode":2,"submitId":556,"times":90},{"returnCode":2,"submitId":556,"times":260},{"returnCode":2,"submitId":556,"times":250},{"returnCode":2,"submitId":556,"times":120},{"returnCode":2,"submitId":556,"times":100},{"returnCode":2,"submitId":556,"times":330},{"returnCode":2,"submitId":556,"times":340},{"returnCode":2,"submitId":556,"times":170},{"returnCode":2,"submitId":556,"times":190},{"returnCode":2,"submitId":556,"times":180},{"returnCode":2,"submitId":556,"times":330},{"returnCode":2,"submitId":556,"times":370},{"returnCode":2,"submitId":556,"times":190},{"returnCode":2,"submitId":556,"times":370},{"returnCode":2,"submitId":556,"times":380},{"returnCode":2,"submitId":556,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (557, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":557,"times":230},{"returnCode":2,"submitId":557,"times":370},{"returnCode":2,"submitId":557,"times":250},{"returnCode":2,"submitId":557,"times":180},{"returnCode":2,"submitId":557,"times":90},{"returnCode":2,"submitId":557,"times":260},{"returnCode":2,"submitId":557,"times":260},{"returnCode":2,"submitId":557,"times":120},{"returnCode":2,"submitId":557,"times":100},{"returnCode":2,"submitId":557,"times":330},{"returnCode":2,"submitId":557,"times":340},{"returnCode":2,"submitId":557,"times":170},{"returnCode":2,"submitId":557,"times":190},{"returnCode":2,"submitId":557,"times":180},{"returnCode":2,"submitId":557,"times":330},{"returnCode":2,"submitId":557,"times":360},{"returnCode":2,"submitId":557,"times":190},{"returnCode":2,"submitId":557,"times":370},{"returnCode":2,"submitId":557,"times":380},{"returnCode":2,"submitId":557,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (558, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":558,"times":230},{"returnCode":2,"submitId":558,"times":360},{"returnCode":2,"submitId":558,"times":250},{"returnCode":2,"submitId":558,"times":180},{"returnCode":2,"submitId":558,"times":90},{"returnCode":2,"submitId":558,"times":260},{"returnCode":2,"submitId":558,"times":260},{"returnCode":2,"submitId":558,"times":120},{"returnCode":2,"submitId":558,"times":100},{"returnCode":2,"submitId":558,"times":330},{"returnCode":2,"submitId":558,"times":340},{"returnCode":2,"submitId":558,"times":170},{"returnCode":2,"submitId":558,"times":190},{"returnCode":2,"submitId":558,"times":180},{"returnCode":2,"submitId":558,"times":330},{"returnCode":2,"submitId":558,"times":360},{"returnCode":2,"submitId":558,"times":190},{"returnCode":2,"submitId":558,"times":370},{"returnCode":2,"submitId":558,"times":370}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (559, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":559,"times":230},{"returnCode":2,"submitId":559,"times":370},{"returnCode":2,"submitId":559,"times":250},{"returnCode":2,"submitId":559,"times":180},{"returnCode":2,"submitId":559,"times":100},{"returnCode":2,"submitId":559,"times":260},{"returnCode":2,"submitId":559,"times":260},{"returnCode":2,"submitId":559,"times":120},{"returnCode":2,"submitId":559,"times":100},{"returnCode":2,"submitId":559,"times":330},{"returnCode":2,"submitId":559,"times":340},{"returnCode":2,"submitId":559,"times":170},{"returnCode":2,"submitId":559,"times":190},{"returnCode":2,"submitId":559,"times":180},{"returnCode":2,"submitId":559,"times":330},{"returnCode":2,"submitId":559,"times":370},{"returnCode":2,"submitId":559,"times":190},{"returnCode":2,"submitId":559,"times":370},{"returnCode":2,"submitId":559,"times":380},{"returnCode":2,"submitId":559,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (560, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":560,"times":230},{"returnCode":2,"submitId":560,"times":370},{"returnCode":2,"submitId":560,"times":250},{"returnCode":2,"submitId":560,"times":180},{"returnCode":2,"submitId":560,"times":90},{"returnCode":2,"submitId":560,"times":260},{"returnCode":2,"submitId":560,"times":260},{"returnCode":2,"submitId":560,"times":120},{"returnCode":2,"submitId":560,"times":100},{"returnCode":2,"submitId":560,"times":330},{"returnCode":2,"submitId":560,"times":340},{"returnCode":2,"submitId":560,"times":170},{"returnCode":2,"submitId":560,"times":190},{"returnCode":2,"submitId":560,"times":180},{"returnCode":2,"submitId":560,"times":330},{"returnCode":2,"submitId":560,"times":370},{"returnCode":2,"submitId":560,"times":190},{"returnCode":2,"submitId":560,"times":370},{"returnCode":2,"submitId":560,"times":380},{"returnCode":2,"submitId":560,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (561, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":561,"times":230},{"returnCode":2,"submitId":561,"times":370},{"returnCode":2,"submitId":561,"times":250},{"returnCode":2,"submitId":561,"times":180},{"returnCode":2,"submitId":561,"times":90},{"returnCode":2,"submitId":561,"times":260},{"returnCode":2,"submitId":561,"times":250},{"returnCode":2,"submitId":561,"times":120},{"returnCode":2,"submitId":561,"times":100},{"returnCode":2,"submitId":561,"times":330},{"returnCode":2,"submitId":561,"times":340},{"returnCode":2,"submitId":561,"times":170},{"returnCode":2,"submitId":561,"times":190},{"returnCode":2,"submitId":561,"times":180},{"returnCode":2,"submitId":561,"times":330},{"returnCode":2,"submitId":561,"times":370},{"returnCode":2,"submitId":561,"times":190},{"returnCode":2,"submitId":561,"times":370},{"returnCode":2,"submitId":561,"times":380},{"returnCode":2,"submitId":561,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (563, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 430, null, null, '[{"returnCode":2,"submitId":563,"times":180},{"returnCode":2,"submitId":563,"times":340},{"returnCode":2,"submitId":563,"times":180},{"returnCode":2,"submitId":563,"times":180},{"returnCode":2,"submitId":563,"times":340},{"returnCode":2,"submitId":563,"times":180}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (564, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 410, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":564,"times":270},{"returnCode":2,"submitId":564,"times":390},{"returnCode":2,"submitId":564,"times":310},{"returnCode":2,"submitId":564,"times":240},{"returnCode":2,"submitId":564,"times":90},{"returnCode":2,"submitId":564,"times":270},{"returnCode":2,"submitId":564,"times":280},{"returnCode":2,"submitId":564,"times":120},{"returnCode":2,"submitId":564,"times":100},{"returnCode":2,"submitId":564,"times":330},{"returnCode":2,"submitId":564,"times":190},{"returnCode":2,"submitId":564,"times":370},{"returnCode":2,"submitId":564,"times":330},{"returnCode":2,"submitId":564,"times":390},{"returnCode":2,"submitId":564,"times":310},{"returnCode":2,"submitId":564,"times":240},{"returnCode":2,"submitId":564,"times":90},{"returnCode":2,"submitId":564,"times":270},{"returnCode":2,"submitId":564,"times":280},{"returnCode":2,"submitId":564,"times":120},{"returnCode":2,"submitId":564,"times":100},{"returnCode":2,"submitId":564,"times":380},{"returnCode":2,"submitId":564,"times":200},{"returnCode":2,"submitId":564,"times":190},{"returnCode":2,"submitId":564,"times":270},{"returnCode":2,"submitId":564,"times":390},{"returnCode":2,"submitId":564,"times":310},{"returnCode":2,"submitId":564,"times":240},{"returnCode":2,"submitId":564,"times":90},{"returnCode":2,"submitId":564,"times":270},{"returnCode":2,"submitId":564,"times":280},{"returnCode":2,"submitId":564,"times":120},{"returnCode":2,"submitId":564,"times":100},{"returnCode":2,"submitId":564,"times":330},{"returnCode":2,"submitId":564,"times":190},{"returnCode":2,"submitId":564,"times":370},{"returnCode":2,"submitId":564,"times":330},{"returnCode":2,"submitId":564,"times":390},{"returnCode":2,"submitId":564,"times":310},{"returnCode":2,"submitId":564,"times":240},{"returnCode":2,"submitId":564,"times":90},{"returnCode":2,"submitId":564,"times":270},{"returnCode":2,"submitId":564,"times":280},{"returnCode":2,"submitId":564,"times":120},{"returnCode":2,"submitId":564,"times":100},{"returnCode":2,"submitId":564,"times":380},{"returnCode":2,"submitId":564,"times":200},{"returnCode":2,"submitId":564,"times":190}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (570, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, null, '[{"returnCode":2,"submitId":570,"times":190},{"returnCode":2,"submitId":570,"times":180},{"returnCode":2,"submitId":570,"times":330},{"returnCode":2,"submitId":570,"times":370},{"returnCode":2,"submitId":570,"times":380},{"returnCode":2,"submitId":570,"times":380},{"returnCode":2,"submitId":570,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (571, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":571,"times":230},{"returnCode":2,"submitId":571,"times":370},{"returnCode":2,"submitId":571,"times":250},{"returnCode":2,"submitId":571,"times":180},{"returnCode":2,"submitId":571,"times":90},{"returnCode":2,"submitId":571,"times":260},{"returnCode":2,"submitId":571,"times":260},{"returnCode":2,"submitId":571,"times":120},{"returnCode":2,"submitId":571,"times":100},{"returnCode":2,"submitId":571,"times":320},{"returnCode":2,"submitId":571,"times":340},{"returnCode":2,"submitId":571,"times":170},{"returnCode":2,"submitId":571,"times":190},{"returnCode":2,"submitId":571,"times":180},{"returnCode":2,"submitId":571,"times":330},{"returnCode":2,"submitId":571,"times":370},{"returnCode":2,"submitId":571,"times":200},{"returnCode":2,"submitId":571,"times":370},{"returnCode":2,"submitId":571,"times":380},{"returnCode":2,"submitId":571,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (572, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":572,"times":230},{"returnCode":2,"submitId":572,"times":370},{"returnCode":2,"submitId":572,"times":250},{"returnCode":2,"submitId":572,"times":180},{"returnCode":2,"submitId":572,"times":90},{"returnCode":2,"submitId":572,"times":260},{"returnCode":2,"submitId":572,"times":260},{"returnCode":2,"submitId":572,"times":120},{"returnCode":2,"submitId":572,"times":100},{"returnCode":2,"submitId":572,"times":330},{"returnCode":2,"submitId":572,"times":340},{"returnCode":2,"submitId":572,"times":170},{"returnCode":2,"submitId":572,"times":190},{"returnCode":2,"submitId":572,"times":180},{"returnCode":2,"submitId":572,"times":330},{"returnCode":2,"submitId":572,"times":360},{"returnCode":2,"submitId":572,"times":190},{"returnCode":2,"submitId":572,"times":370},{"returnCode":2,"submitId":572,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (573, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":573,"times":230},{"returnCode":2,"submitId":573,"times":370},{"returnCode":2,"submitId":573,"times":250},{"returnCode":2,"submitId":573,"times":180},{"returnCode":2,"submitId":573,"times":90},{"returnCode":2,"submitId":573,"times":260},{"returnCode":2,"submitId":573,"times":260},{"returnCode":2,"submitId":573,"times":120},{"returnCode":2,"submitId":573,"times":100},{"returnCode":2,"submitId":573,"times":330},{"returnCode":2,"submitId":573,"times":340},{"returnCode":2,"submitId":573,"times":170},{"returnCode":2,"submitId":573,"times":190},{"returnCode":2,"submitId":573,"times":180},{"returnCode":2,"submitId":573,"times":330},{"returnCode":2,"submitId":573,"times":360},{"returnCode":2,"submitId":573,"times":190},{"returnCode":2,"submitId":573,"times":370},{"returnCode":2,"submitId":573,"times":380},{"returnCode":2,"submitId":573,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (574, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":574,"times":230},{"returnCode":2,"submitId":574,"times":370},{"returnCode":2,"submitId":574,"times":250},{"returnCode":2,"submitId":574,"times":180},{"returnCode":2,"submitId":574,"times":90},{"returnCode":2,"submitId":574,"times":260},{"returnCode":2,"submitId":574,"times":260},{"returnCode":2,"submitId":574,"times":120},{"returnCode":2,"submitId":574,"times":100},{"returnCode":2,"submitId":574,"times":330},{"returnCode":2,"submitId":574,"times":340},{"returnCode":2,"submitId":574,"times":170},{"returnCode":2,"submitId":574,"times":190},{"returnCode":2,"submitId":574,"times":180},{"returnCode":2,"submitId":574,"times":330},{"returnCode":2,"submitId":574,"times":360},{"returnCode":2,"submitId":574,"times":190},{"returnCode":2,"submitId":574,"times":370},{"returnCode":2,"submitId":574,"times":380},{"returnCode":2,"submitId":574,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (575, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":575,"times":230},{"returnCode":2,"submitId":575,"times":370},{"returnCode":2,"submitId":575,"times":250},{"returnCode":2,"submitId":575,"times":180},{"returnCode":2,"submitId":575,"times":90},{"returnCode":2,"submitId":575,"times":250},{"returnCode":2,"submitId":575,"times":250},{"returnCode":2,"submitId":575,"times":120},{"returnCode":2,"submitId":575,"times":100},{"returnCode":2,"submitId":575,"times":330},{"returnCode":2,"submitId":575,"times":340},{"returnCode":2,"submitId":575,"times":170},{"returnCode":2,"submitId":575,"times":190},{"returnCode":2,"submitId":575,"times":180},{"returnCode":2,"submitId":575,"times":340},{"returnCode":2,"submitId":575,"times":360},{"returnCode":2,"submitId":575,"times":190},{"returnCode":2,"submitId":575,"times":370},{"returnCode":2,"submitId":575,"times":370},{"returnCode":2,"submitId":575,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (577, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":577,"times":230},{"returnCode":2,"submitId":577,"times":370},{"returnCode":2,"submitId":577,"times":240},{"returnCode":2,"submitId":577,"times":180},{"returnCode":2,"submitId":577,"times":90},{"returnCode":2,"submitId":577,"times":250},{"returnCode":2,"submitId":577,"times":250},{"returnCode":2,"submitId":577,"times":120},{"returnCode":2,"submitId":577,"times":100},{"returnCode":2,"submitId":577,"times":320},{"returnCode":2,"submitId":577,"times":340},{"returnCode":2,"submitId":577,"times":170},{"returnCode":2,"submitId":577,"times":190},{"returnCode":2,"submitId":577,"times":180},{"returnCode":2,"submitId":577,"times":330},{"returnCode":2,"submitId":577,"times":370},{"returnCode":2,"submitId":577,"times":200},{"returnCode":2,"submitId":577,"times":380},{"returnCode":2,"submitId":577,"times":390},{"returnCode":2,"submitId":577,"times":130}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (589, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 410, null, null, '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (591, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":591,"times":260},{"returnCode":2,"submitId":591,"times":250},{"returnCode":2,"submitId":591,"times":120},{"returnCode":2,"submitId":591,"times":100},{"returnCode":2,"submitId":591,"times":330},{"returnCode":2,"submitId":591,"times":340},{"returnCode":2,"submitId":591,"times":170},{"returnCode":2,"submitId":591,"times":190},{"returnCode":2,"submitId":591,"times":180},{"returnCode":2,"submitId":591,"times":330},{"returnCode":2,"submitId":591,"times":370},{"returnCode":2,"submitId":591,"times":190},{"returnCode":2,"submitId":591,"times":370},{"returnCode":2,"submitId":591,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (592, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":592,"times":230},{"returnCode":2,"submitId":592,"times":370},{"returnCode":2,"submitId":592,"times":250},{"returnCode":2,"submitId":592,"times":180},{"returnCode":2,"submitId":592,"times":90},{"returnCode":2,"submitId":592,"times":260},{"returnCode":2,"submitId":592,"times":260},{"returnCode":2,"submitId":592,"times":120},{"returnCode":2,"submitId":592,"times":100},{"returnCode":2,"submitId":592,"times":330},{"returnCode":2,"submitId":592,"times":340},{"returnCode":2,"submitId":592,"times":170},{"returnCode":2,"submitId":592,"times":190},{"returnCode":2,"submitId":592,"times":180},{"returnCode":2,"submitId":592,"times":330},{"returnCode":2,"submitId":592,"times":370},{"returnCode":2,"submitId":592,"times":190},{"returnCode":2,"submitId":592,"times":370},{"returnCode":2,"submitId":592,"times":380},{"returnCode":2,"submitId":592,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (593, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":593,"times":230},{"returnCode":2,"submitId":593,"times":370},{"returnCode":2,"submitId":593,"times":250},{"returnCode":2,"submitId":593,"times":180},{"returnCode":2,"submitId":593,"times":90},{"returnCode":2,"submitId":593,"times":260},{"returnCode":2,"submitId":593,"times":250},{"returnCode":2,"submitId":593,"times":120},{"returnCode":2,"submitId":593,"times":100},{"returnCode":2,"submitId":593,"times":330},{"returnCode":2,"submitId":593,"times":340},{"returnCode":2,"submitId":593,"times":170},{"returnCode":2,"submitId":593,"times":190},{"returnCode":2,"submitId":593,"times":180},{"returnCode":2,"submitId":593,"times":330},{"returnCode":2,"submitId":593,"times":360},{"returnCode":2,"submitId":593,"times":190},{"returnCode":2,"submitId":593,"times":370},{"returnCode":2,"submitId":593,"times":380},{"returnCode":2,"submitId":593,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (594, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":594,"times":230},{"returnCode":2,"submitId":594,"times":370},{"returnCode":2,"submitId":594,"times":250},{"returnCode":2,"submitId":594,"times":180},{"returnCode":2,"submitId":594,"times":90},{"returnCode":2,"submitId":594,"times":260},{"returnCode":2,"submitId":594,"times":260},{"returnCode":2,"submitId":594,"times":120},{"returnCode":2,"submitId":594,"times":100},{"returnCode":2,"submitId":594,"times":330},{"returnCode":2,"submitId":594,"times":340},{"returnCode":2,"submitId":594,"times":170},{"returnCode":2,"submitId":594,"times":190},{"returnCode":2,"submitId":594,"times":190},{"returnCode":2,"submitId":594,"times":330},{"returnCode":2,"submitId":594,"times":370},{"returnCode":2,"submitId":594,"times":190},{"returnCode":2,"submitId":594,"times":370},{"returnCode":2,"submitId":594,"times":380},{"returnCode":2,"submitId":594,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (595, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":595,"times":230},{"returnCode":2,"submitId":595,"times":370},{"returnCode":2,"submitId":595,"times":250},{"returnCode":2,"submitId":595,"times":180},{"returnCode":2,"submitId":595,"times":90},{"returnCode":2,"submitId":595,"times":260},{"returnCode":2,"submitId":595,"times":250},{"returnCode":2,"submitId":595,"times":120},{"returnCode":2,"submitId":595,"times":100},{"returnCode":2,"submitId":595,"times":330},{"returnCode":2,"submitId":595,"times":340},{"returnCode":2,"submitId":595,"times":170},{"returnCode":2,"submitId":595,"times":190},{"returnCode":2,"submitId":595,"times":180},{"returnCode":2,"submitId":595,"times":330},{"returnCode":2,"submitId":595,"times":360},{"returnCode":2,"submitId":595,"times":190},{"returnCode":2,"submitId":595,"times":370},{"returnCode":2,"submitId":595,"times":380},{"returnCode":2,"submitId":595,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (596, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":596,"times":230},{"returnCode":2,"submitId":596,"times":370},{"returnCode":2,"submitId":596,"times":250},{"returnCode":2,"submitId":596,"times":180},{"returnCode":2,"submitId":596,"times":90},{"returnCode":2,"submitId":596,"times":260},{"returnCode":2,"submitId":596,"times":260},{"returnCode":2,"submitId":596,"times":120},{"returnCode":2,"submitId":596,"times":100},{"returnCode":2,"submitId":596,"times":330},{"returnCode":2,"submitId":596,"times":340},{"returnCode":2,"submitId":596,"times":170},{"returnCode":2,"submitId":596,"times":190},{"returnCode":2,"submitId":596,"times":180},{"returnCode":2,"submitId":596,"times":330},{"returnCode":2,"submitId":596,"times":360},{"returnCode":2,"submitId":596,"times":190},{"returnCode":2,"submitId":596,"times":370},{"returnCode":2,"submitId":596,"times":380},{"returnCode":2,"submitId":596,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (597, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":597,"times":230},{"returnCode":2,"submitId":597,"times":370},{"returnCode":2,"submitId":597,"times":250},{"returnCode":2,"submitId":597,"times":180},{"returnCode":2,"submitId":597,"times":90},{"returnCode":2,"submitId":597,"times":260},{"returnCode":2,"submitId":597,"times":260},{"returnCode":2,"submitId":597,"times":120},{"returnCode":2,"submitId":597,"times":90},{"returnCode":2,"submitId":597,"times":330},{"returnCode":2,"submitId":597,"times":330},{"returnCode":2,"submitId":597,"times":170},{"returnCode":2,"submitId":597,"times":190},{"returnCode":2,"submitId":597,"times":180},{"returnCode":2,"submitId":597,"times":330},{"returnCode":2,"submitId":597,"times":370},{"returnCode":2,"submitId":597,"times":190},{"returnCode":2,"submitId":597,"times":370},{"returnCode":2,"submitId":597,"times":380},{"returnCode":2,"submitId":597,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (598, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":598,"times":230},{"returnCode":2,"submitId":598,"times":370},{"returnCode":2,"submitId":598,"times":250},{"returnCode":2,"submitId":598,"times":180},{"returnCode":2,"submitId":598,"times":90},{"returnCode":2,"submitId":598,"times":260},{"returnCode":2,"submitId":598,"times":260},{"returnCode":2,"submitId":598,"times":120},{"returnCode":2,"submitId":598,"times":100},{"returnCode":2,"submitId":598,"times":330},{"returnCode":2,"submitId":598,"times":340},{"returnCode":2,"submitId":598,"times":170},{"returnCode":2,"submitId":598,"times":190},{"returnCode":2,"submitId":598,"times":190},{"returnCode":2,"submitId":598,"times":330},{"returnCode":2,"submitId":598,"times":360},{"returnCode":2,"submitId":598,"times":190},{"returnCode":2,"submitId":598,"times":370},{"returnCode":2,"submitId":598,"times":380},{"returnCode":2,"submitId":598,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (599, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":599,"times":230},{"returnCode":2,"submitId":599,"times":370},{"returnCode":2,"submitId":599,"times":250},{"returnCode":2,"submitId":599,"times":180},{"returnCode":2,"submitId":599,"times":90},{"returnCode":2,"submitId":599,"times":260},{"returnCode":2,"submitId":599,"times":250},{"returnCode":2,"submitId":599,"times":120},{"returnCode":2,"submitId":599,"times":100},{"returnCode":2,"submitId":599,"times":330},{"returnCode":2,"submitId":599,"times":340},{"returnCode":2,"submitId":599,"times":170},{"returnCode":2,"submitId":599,"times":190},{"returnCode":2,"submitId":599,"times":180},{"returnCode":2,"submitId":599,"times":330},{"returnCode":2,"submitId":599,"times":360},{"returnCode":2,"submitId":599,"times":190},{"returnCode":2,"submitId":599,"times":370},{"returnCode":2,"submitId":599,"times":380},{"returnCode":2,"submitId":599,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (600, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":600,"times":230},{"returnCode":2,"submitId":600,"times":370},{"returnCode":2,"submitId":600,"times":250},{"returnCode":2,"submitId":600,"times":180},{"returnCode":2,"submitId":600,"times":90},{"returnCode":2,"submitId":600,"times":260},{"returnCode":2,"submitId":600,"times":250},{"returnCode":2,"submitId":600,"times":120},{"returnCode":2,"submitId":600,"times":100},{"returnCode":2,"submitId":600,"times":330},{"returnCode":2,"submitId":600,"times":340},{"returnCode":2,"submitId":600,"times":170},{"returnCode":2,"submitId":600,"times":190},{"returnCode":2,"submitId":600,"times":180},{"returnCode":2,"submitId":600,"times":330},{"returnCode":2,"submitId":600,"times":360},{"returnCode":2,"submitId":600,"times":190},{"returnCode":2,"submitId":600,"times":370},{"returnCode":2,"submitId":600,"times":380},{"returnCode":2,"submitId":600,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (601, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":601,"times":230},{"returnCode":2,"submitId":601,"times":370},{"returnCode":2,"submitId":601,"times":250},{"returnCode":2,"submitId":601,"times":180},{"returnCode":2,"submitId":601,"times":90},{"returnCode":2,"submitId":601,"times":260},{"returnCode":2,"submitId":601,"times":250},{"returnCode":2,"submitId":601,"times":120},{"returnCode":2,"submitId":601,"times":100},{"returnCode":2,"submitId":601,"times":330},{"returnCode":2,"submitId":601,"times":340},{"returnCode":2,"submitId":601,"times":170},{"returnCode":2,"submitId":601,"times":190},{"returnCode":2,"submitId":601,"times":180},{"returnCode":2,"submitId":601,"times":330},{"returnCode":2,"submitId":601,"times":360},{"returnCode":2,"submitId":601,"times":190},{"returnCode":2,"submitId":601,"times":370},{"returnCode":2,"submitId":601,"times":380},{"returnCode":2,"submitId":601,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (602, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":602,"times":230},{"returnCode":2,"submitId":602,"times":370},{"returnCode":2,"submitId":602,"times":250},{"returnCode":2,"submitId":602,"times":180},{"returnCode":2,"submitId":602,"times":90},{"returnCode":2,"submitId":602,"times":260},{"returnCode":2,"submitId":602,"times":250},{"returnCode":2,"submitId":602,"times":120},{"returnCode":2,"submitId":602,"times":90},{"returnCode":2,"submitId":602,"times":330},{"returnCode":2,"submitId":602,"times":340},{"returnCode":2,"submitId":602,"times":170},{"returnCode":2,"submitId":602,"times":190},{"returnCode":2,"submitId":602,"times":180},{"returnCode":2,"submitId":602,"times":330},{"returnCode":2,"submitId":602,"times":360},{"returnCode":2,"submitId":602,"times":190},{"returnCode":2,"submitId":602,"times":370},{"returnCode":2,"submitId":602,"times":370}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (603, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":603,"times":230},{"returnCode":2,"submitId":603,"times":370},{"returnCode":2,"submitId":603,"times":260},{"returnCode":2,"submitId":603,"times":180},{"returnCode":2,"submitId":603,"times":90},{"returnCode":2,"submitId":603,"times":260},{"returnCode":2,"submitId":603,"times":250},{"returnCode":2,"submitId":603,"times":120},{"returnCode":2,"submitId":603,"times":100},{"returnCode":2,"submitId":603,"times":330},{"returnCode":2,"submitId":603,"times":340},{"returnCode":2,"submitId":603,"times":170},{"returnCode":2,"submitId":603,"times":190},{"returnCode":2,"submitId":603,"times":180},{"returnCode":2,"submitId":603,"times":330},{"returnCode":2,"submitId":603,"times":360},{"returnCode":2,"submitId":603,"times":190},{"returnCode":2,"submitId":603,"times":370},{"returnCode":2,"submitId":603,"times":380},{"returnCode":2,"submitId":603,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (604, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":604,"times":230},{"returnCode":2,"submitId":604,"times":370},{"returnCode":2,"submitId":604,"times":250},{"returnCode":2,"submitId":604,"times":180},{"returnCode":2,"submitId":604,"times":90},{"returnCode":2,"submitId":604,"times":260},{"returnCode":2,"submitId":604,"times":260},{"returnCode":2,"submitId":604,"times":120},{"returnCode":2,"submitId":604,"times":100},{"returnCode":2,"submitId":604,"times":330},{"returnCode":2,"submitId":604,"times":340},{"returnCode":2,"submitId":604,"times":170},{"returnCode":2,"submitId":604,"times":190},{"returnCode":2,"submitId":604,"times":180},{"returnCode":2,"submitId":604,"times":330},{"returnCode":2,"submitId":604,"times":360},{"returnCode":2,"submitId":604,"times":190},{"returnCode":2,"submitId":604,"times":380},{"returnCode":2,"submitId":604,"times":380},{"returnCode":2,"submitId":604,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (605, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":605,"times":230},{"returnCode":2,"submitId":605,"times":370},{"returnCode":2,"submitId":605,"times":250},{"returnCode":2,"submitId":605,"times":180},{"returnCode":2,"submitId":605,"times":90},{"returnCode":2,"submitId":605,"times":260},{"returnCode":2,"submitId":605,"times":260},{"returnCode":2,"submitId":605,"times":120},{"returnCode":2,"submitId":605,"times":100},{"returnCode":2,"submitId":605,"times":330},{"returnCode":2,"submitId":605,"times":340},{"returnCode":2,"submitId":605,"times":170},{"returnCode":2,"submitId":605,"times":190},{"returnCode":2,"submitId":605,"times":180},{"returnCode":2,"submitId":605,"times":340},{"returnCode":2,"submitId":605,"times":370},{"returnCode":2,"submitId":605,"times":190},{"returnCode":2,"submitId":605,"times":370},{"returnCode":2,"submitId":605,"times":380},{"returnCode":2,"submitId":605,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (606, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":606,"times":230},{"returnCode":2,"submitId":606,"times":370},{"returnCode":2,"submitId":606,"times":250},{"returnCode":2,"submitId":606,"times":180},{"returnCode":2,"submitId":606,"times":90},{"returnCode":2,"submitId":606,"times":260},{"returnCode":2,"submitId":606,"times":250},{"returnCode":2,"submitId":606,"times":120},{"returnCode":2,"submitId":606,"times":100},{"returnCode":2,"submitId":606,"times":320},{"returnCode":2,"submitId":606,"times":340},{"returnCode":2,"submitId":606,"times":170},{"returnCode":2,"submitId":606,"times":190},{"returnCode":2,"submitId":606,"times":180},{"returnCode":2,"submitId":606,"times":330},{"returnCode":2,"submitId":606,"times":360},{"returnCode":2,"submitId":606,"times":190},{"returnCode":2,"submitId":606,"times":370},{"returnCode":2,"submitId":606,"times":380},{"returnCode":2,"submitId":606,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (607, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":607,"times":230},{"returnCode":2,"submitId":607,"times":370},{"returnCode":2,"submitId":607,"times":250},{"returnCode":2,"submitId":607,"times":180},{"returnCode":2,"submitId":607,"times":90},{"returnCode":2,"submitId":607,"times":260},{"returnCode":2,"submitId":607,"times":260},{"returnCode":2,"submitId":607,"times":120},{"returnCode":2,"submitId":607,"times":100},{"returnCode":2,"submitId":607,"times":330},{"returnCode":2,"submitId":607,"times":340},{"returnCode":2,"submitId":607,"times":170},{"returnCode":2,"submitId":607,"times":190},{"returnCode":2,"submitId":607,"times":180},{"returnCode":2,"submitId":607,"times":330},{"returnCode":2,"submitId":607,"times":360},{"returnCode":2,"submitId":607,"times":190},{"returnCode":2,"submitId":607,"times":370},{"returnCode":2,"submitId":607,"times":380},{"returnCode":2,"submitId":607,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (608, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":608,"times":230},{"returnCode":2,"submitId":608,"times":370},{"returnCode":2,"submitId":608,"times":250},{"returnCode":2,"submitId":608,"times":180},{"returnCode":2,"submitId":608,"times":90},{"returnCode":2,"submitId":608,"times":250},{"returnCode":2,"submitId":608,"times":250},{"returnCode":2,"submitId":608,"times":120},{"returnCode":2,"submitId":608,"times":100},{"returnCode":2,"submitId":608,"times":330},{"returnCode":2,"submitId":608,"times":340},{"returnCode":2,"submitId":608,"times":170},{"returnCode":2,"submitId":608,"times":190},{"returnCode":2,"submitId":608,"times":180},{"returnCode":2,"submitId":608,"times":330},{"returnCode":2,"submitId":608,"times":360},{"returnCode":2,"submitId":608,"times":190},{"returnCode":2,"submitId":608,"times":370},{"returnCode":2,"submitId":608,"times":380},{"returnCode":2,"submitId":608,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (609, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":609,"times":230},{"returnCode":2,"submitId":609,"times":370},{"returnCode":2,"submitId":609,"times":260},{"returnCode":2,"submitId":609,"times":180},{"returnCode":2,"submitId":609,"times":90},{"returnCode":2,"submitId":609,"times":260},{"returnCode":2,"submitId":609,"times":260},{"returnCode":2,"submitId":609,"times":120},{"returnCode":2,"submitId":609,"times":100},{"returnCode":2,"submitId":609,"times":330},{"returnCode":2,"submitId":609,"times":340},{"returnCode":2,"submitId":609,"times":170},{"returnCode":2,"submitId":609,"times":190},{"returnCode":2,"submitId":609,"times":180},{"returnCode":2,"submitId":609,"times":330},{"returnCode":2,"submitId":609,"times":360},{"returnCode":2,"submitId":609,"times":190},{"returnCode":2,"submitId":609,"times":370},{"returnCode":2,"submitId":609,"times":380},{"returnCode":2,"submitId":609,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (610, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":610,"times":230},{"returnCode":2,"submitId":610,"times":370},{"returnCode":2,"submitId":610,"times":250},{"returnCode":2,"submitId":610,"times":180},{"returnCode":2,"submitId":610,"times":90},{"returnCode":2,"submitId":610,"times":260},{"returnCode":2,"submitId":610,"times":260},{"returnCode":2,"submitId":610,"times":120},{"returnCode":2,"submitId":610,"times":100},{"returnCode":2,"submitId":610,"times":330},{"returnCode":2,"submitId":610,"times":340},{"returnCode":2,"submitId":610,"times":170},{"returnCode":2,"submitId":610,"times":190},{"returnCode":2,"submitId":610,"times":180},{"returnCode":2,"submitId":610,"times":330},{"returnCode":2,"submitId":610,"times":370},{"returnCode":2,"submitId":610,"times":190},{"returnCode":2,"submitId":610,"times":370},{"returnCode":2,"submitId":610,"times":380},{"returnCode":2,"submitId":610,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (611, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":611,"times":230},{"returnCode":2,"submitId":611,"times":360},{"returnCode":2,"submitId":611,"times":260},{"returnCode":2,"submitId":611,"times":180},{"returnCode":2,"submitId":611,"times":90},{"returnCode":2,"submitId":611,"times":250},{"returnCode":2,"submitId":611,"times":250},{"returnCode":2,"submitId":611,"times":120},{"returnCode":2,"submitId":611,"times":100},{"returnCode":2,"submitId":611,"times":330},{"returnCode":2,"submitId":611,"times":340},{"returnCode":2,"submitId":611,"times":170},{"returnCode":2,"submitId":611,"times":190},{"returnCode":2,"submitId":611,"times":180},{"returnCode":2,"submitId":611,"times":330},{"returnCode":2,"submitId":611,"times":370},{"returnCode":2,"submitId":611,"times":190},{"returnCode":2,"submitId":611,"times":370},{"returnCode":2,"submitId":611,"times":380},{"returnCode":2,"submitId":611,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (612, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":612,"times":230},{"returnCode":2,"submitId":612,"times":370},{"returnCode":2,"submitId":612,"times":250},{"returnCode":2,"submitId":612,"times":180},{"returnCode":2,"submitId":612,"times":90},{"returnCode":2,"submitId":612,"times":260},{"returnCode":2,"submitId":612,"times":260},{"returnCode":2,"submitId":612,"times":120},{"returnCode":2,"submitId":612,"times":100},{"returnCode":2,"submitId":612,"times":330},{"returnCode":2,"submitId":612,"times":330},{"returnCode":2,"submitId":612,"times":180},{"returnCode":2,"submitId":612,"times":190},{"returnCode":2,"submitId":612,"times":190},{"returnCode":2,"submitId":612,"times":330},{"returnCode":2,"submitId":612,"times":360},{"returnCode":2,"submitId":612,"times":190},{"returnCode":2,"submitId":612,"times":370},{"returnCode":2,"submitId":612,"times":380},{"returnCode":2,"submitId":612,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (613, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":613,"times":230},{"returnCode":2,"submitId":613,"times":370},{"returnCode":2,"submitId":613,"times":250},{"returnCode":2,"submitId":613,"times":180},{"returnCode":2,"submitId":613,"times":90},{"returnCode":2,"submitId":613,"times":260},{"returnCode":2,"submitId":613,"times":260},{"returnCode":2,"submitId":613,"times":120},{"returnCode":2,"submitId":613,"times":100},{"returnCode":2,"submitId":613,"times":330},{"returnCode":2,"submitId":613,"times":340},{"returnCode":2,"submitId":613,"times":170},{"returnCode":2,"submitId":613,"times":190},{"returnCode":2,"submitId":613,"times":180},{"returnCode":2,"submitId":613,"times":350},{"returnCode":2,"submitId":613,"times":390},{"returnCode":2,"submitId":613,"times":200},{"returnCode":2,"submitId":613,"times":380},{"returnCode":2,"submitId":613,"times":390},{"returnCode":2,"submitId":613,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (614, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":614,"times":230},{"returnCode":2,"submitId":614,"times":370},{"returnCode":2,"submitId":614,"times":250},{"returnCode":2,"submitId":614,"times":180},{"returnCode":2,"submitId":614,"times":90},{"returnCode":2,"submitId":614,"times":260},{"returnCode":2,"submitId":614,"times":260},{"returnCode":2,"submitId":614,"times":120},{"returnCode":2,"submitId":614,"times":100},{"returnCode":2,"submitId":614,"times":330},{"returnCode":2,"submitId":614,"times":340},{"returnCode":2,"submitId":614,"times":170},{"returnCode":2,"submitId":614,"times":190},{"returnCode":2,"submitId":614,"times":190},{"returnCode":2,"submitId":614,"times":330},{"returnCode":2,"submitId":614,"times":370},{"returnCode":2,"submitId":614,"times":190},{"returnCode":2,"submitId":614,"times":370},{"returnCode":2,"submitId":614,"times":380},{"returnCode":2,"submitId":614,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (615, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":615,"times":230},{"returnCode":2,"submitId":615,"times":380},{"returnCode":2,"submitId":615,"times":250},{"returnCode":2,"submitId":615,"times":180},{"returnCode":2,"submitId":615,"times":90},{"returnCode":2,"submitId":615,"times":260},{"returnCode":2,"submitId":615,"times":260},{"returnCode":2,"submitId":615,"times":120},{"returnCode":2,"submitId":615,"times":100},{"returnCode":2,"submitId":615,"times":330},{"returnCode":2,"submitId":615,"times":340},{"returnCode":2,"submitId":615,"times":170},{"returnCode":2,"submitId":615,"times":190},{"returnCode":2,"submitId":615,"times":180},{"returnCode":2,"submitId":615,"times":330},{"returnCode":2,"submitId":615,"times":370},{"returnCode":2,"submitId":615,"times":190},{"returnCode":2,"submitId":615,"times":370},{"returnCode":2,"submitId":615,"times":370},{"returnCode":2,"submitId":615,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (616, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":616,"times":230},{"returnCode":2,"submitId":616,"times":370},{"returnCode":2,"submitId":616,"times":250},{"returnCode":2,"submitId":616,"times":180},{"returnCode":2,"submitId":616,"times":100},{"returnCode":2,"submitId":616,"times":260},{"returnCode":2,"submitId":616,"times":260},{"returnCode":2,"submitId":616,"times":120},{"returnCode":2,"submitId":616,"times":100},{"returnCode":2,"submitId":616,"times":330},{"returnCode":2,"submitId":616,"times":340},{"returnCode":2,"submitId":616,"times":170},{"returnCode":2,"submitId":616,"times":200},{"returnCode":2,"submitId":616,"times":180},{"returnCode":2,"submitId":616,"times":330},{"returnCode":2,"submitId":616,"times":370},{"returnCode":2,"submitId":616,"times":190},{"returnCode":2,"submitId":616,"times":380},{"returnCode":2,"submitId":616,"times":370},{"returnCode":2,"submitId":616,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (617, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":617,"times":230},{"returnCode":2,"submitId":617,"times":370},{"returnCode":2,"submitId":617,"times":250},{"returnCode":2,"submitId":617,"times":190},{"returnCode":2,"submitId":617,"times":90},{"returnCode":2,"submitId":617,"times":260},{"returnCode":2,"submitId":617,"times":260},{"returnCode":2,"submitId":617,"times":120},{"returnCode":2,"submitId":617,"times":100},{"returnCode":2,"submitId":617,"times":330},{"returnCode":2,"submitId":617,"times":340},{"returnCode":2,"submitId":617,"times":180},{"returnCode":2,"submitId":617,"times":200},{"returnCode":2,"submitId":617,"times":180},{"returnCode":2,"submitId":617,"times":330},{"returnCode":2,"submitId":617,"times":360},{"returnCode":2,"submitId":617,"times":190},{"returnCode":2,"submitId":617,"times":370},{"returnCode":2,"submitId":617,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (618, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":618,"times":230},{"returnCode":2,"submitId":618,"times":380},{"returnCode":2,"submitId":618,"times":250},{"returnCode":2,"submitId":618,"times":180},{"returnCode":2,"submitId":618,"times":90},{"returnCode":2,"submitId":618,"times":260},{"returnCode":2,"submitId":618,"times":260},{"returnCode":2,"submitId":618,"times":120},{"returnCode":2,"submitId":618,"times":100},{"returnCode":2,"submitId":618,"times":330},{"returnCode":2,"submitId":618,"times":340},{"returnCode":2,"submitId":618,"times":170},{"returnCode":2,"submitId":618,"times":200},{"returnCode":2,"submitId":618,"times":180},{"returnCode":2,"submitId":618,"times":330},{"returnCode":2,"submitId":618,"times":370},{"returnCode":2,"submitId":618,"times":200},{"returnCode":2,"submitId":618,"times":380},{"returnCode":2,"submitId":618,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (619, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":619,"times":230},{"returnCode":2,"submitId":619,"times":380},{"returnCode":2,"submitId":619,"times":250},{"returnCode":2,"submitId":619,"times":180},{"returnCode":2,"submitId":619,"times":90},{"returnCode":2,"submitId":619,"times":260},{"returnCode":2,"submitId":619,"times":260},{"returnCode":2,"submitId":619,"times":120},{"returnCode":2,"submitId":619,"times":100},{"returnCode":2,"submitId":619,"times":330},{"returnCode":2,"submitId":619,"times":340},{"returnCode":2,"submitId":619,"times":180},{"returnCode":2,"submitId":619,"times":190},{"returnCode":2,"submitId":619,"times":180},{"returnCode":2,"submitId":619,"times":330},{"returnCode":2,"submitId":619,"times":370},{"returnCode":2,"submitId":619,"times":190},{"returnCode":2,"submitId":619,"times":370},{"returnCode":2,"submitId":619,"times":390},{"returnCode":2,"submitId":619,"times":130}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (633, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 410, null, null, '[{"returnCode":2,"submitId":633,"times":360},{"returnCode":2,"submitId":633,"times":410},{"returnCode":2,"submitId":633,"times":220},{"returnCode":2,"submitId":633,"times":370},{"returnCode":2,"submitId":633,"times":380},{"returnCode":2,"submitId":633,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (634, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":634,"times":230},{"returnCode":2,"submitId":634,"times":380},{"returnCode":2,"submitId":634,"times":250},{"returnCode":2,"submitId":634,"times":180},{"returnCode":2,"submitId":634,"times":90},{"returnCode":2,"submitId":634,"times":260},{"returnCode":2,"submitId":634,"times":260},{"returnCode":2,"submitId":634,"times":120},{"returnCode":2,"submitId":634,"times":100},{"returnCode":2,"submitId":634,"times":330},{"returnCode":2,"submitId":634,"times":340},{"returnCode":2,"submitId":634,"times":180},{"returnCode":2,"submitId":634,"times":190},{"returnCode":2,"submitId":634,"times":180},{"returnCode":2,"submitId":634,"times":340},{"returnCode":2,"submitId":634,"times":360},{"returnCode":2,"submitId":634,"times":190},{"returnCode":2,"submitId":634,"times":370},{"returnCode":2,"submitId":634,"times":370},{"returnCode":2,"submitId":634,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (648, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":648,"times":230},{"returnCode":2,"submitId":648,"times":370},{"returnCode":2,"submitId":648,"times":250},{"returnCode":2,"submitId":648,"times":180},{"returnCode":2,"submitId":648,"times":90},{"returnCode":2,"submitId":648,"times":260},{"returnCode":2,"submitId":648,"times":260},{"returnCode":2,"submitId":648,"times":120},{"returnCode":2,"submitId":648,"times":100},{"returnCode":2,"submitId":648,"times":330},{"returnCode":2,"submitId":648,"times":340},{"returnCode":2,"submitId":648,"times":170},{"returnCode":2,"submitId":648,"times":190},{"returnCode":2,"submitId":648,"times":180},{"returnCode":2,"submitId":648,"times":340},{"returnCode":2,"submitId":648,"times":370},{"returnCode":2,"submitId":648,"times":190},{"returnCode":2,"submitId":648,"times":370},{"returnCode":2,"submitId":648,"times":380},{"returnCode":2,"submitId":648,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (649, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":649,"times":230},{"returnCode":2,"submitId":649,"times":370},{"returnCode":2,"submitId":649,"times":250},{"returnCode":2,"submitId":649,"times":180},{"returnCode":2,"submitId":649,"times":90},{"returnCode":2,"submitId":649,"times":260},{"returnCode":2,"submitId":649,"times":260},{"returnCode":2,"submitId":649,"times":120},{"returnCode":2,"submitId":649,"times":100},{"returnCode":2,"submitId":649,"times":330},{"returnCode":2,"submitId":649,"times":340},{"returnCode":2,"submitId":649,"times":170},{"returnCode":2,"submitId":649,"times":190},{"returnCode":2,"submitId":649,"times":180},{"returnCode":2,"submitId":649,"times":330},{"returnCode":2,"submitId":649,"times":360},{"returnCode":2,"submitId":649,"times":190},{"returnCode":2,"submitId":649,"times":370},{"returnCode":2,"submitId":649,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (651, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 410, null, null, '[{"returnCode":2,"submitId":651,"times":360},{"returnCode":2,"submitId":651,"times":410},{"returnCode":2,"submitId":651,"times":220},{"returnCode":2,"submitId":651,"times":370},{"returnCode":2,"submitId":651,"times":380},{"returnCode":2,"submitId":651,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (652, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":652,"times":230},{"returnCode":2,"submitId":652,"times":370},{"returnCode":2,"submitId":652,"times":250},{"returnCode":2,"submitId":652,"times":180},{"returnCode":2,"submitId":652,"times":90},{"returnCode":2,"submitId":652,"times":260},{"returnCode":2,"submitId":652,"times":260},{"returnCode":2,"submitId":652,"times":120},{"returnCode":2,"submitId":652,"times":100},{"returnCode":2,"submitId":652,"times":330},{"returnCode":2,"submitId":652,"times":340},{"returnCode":2,"submitId":652,"times":170},{"returnCode":2,"submitId":652,"times":190},{"returnCode":2,"submitId":652,"times":180},{"returnCode":2,"submitId":652,"times":330},{"returnCode":2,"submitId":652,"times":360},{"returnCode":2,"submitId":652,"times":190},{"returnCode":2,"submitId":652,"times":370},{"returnCode":2,"submitId":652,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (653, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":653,"times":230},{"returnCode":2,"submitId":653,"times":370},{"returnCode":2,"submitId":653,"times":250},{"returnCode":2,"submitId":653,"times":180},{"returnCode":2,"submitId":653,"times":90},{"returnCode":2,"submitId":653,"times":260},{"returnCode":2,"submitId":653,"times":260},{"returnCode":2,"submitId":653,"times":120},{"returnCode":2,"submitId":653,"times":100},{"returnCode":2,"submitId":653,"times":330},{"returnCode":2,"submitId":653,"times":340},{"returnCode":2,"submitId":653,"times":170},{"returnCode":2,"submitId":653,"times":190},{"returnCode":2,"submitId":653,"times":180},{"returnCode":2,"submitId":653,"times":330},{"returnCode":2,"submitId":653,"times":370},{"returnCode":2,"submitId":653,"times":190},{"returnCode":2,"submitId":653,"times":370},{"returnCode":2,"submitId":653,"times":380},{"returnCode":2,"submitId":653,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (654, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":654,"times":230},{"returnCode":2,"submitId":654,"times":370},{"returnCode":2,"submitId":654,"times":250},{"returnCode":2,"submitId":654,"times":180},{"returnCode":2,"submitId":654,"times":90},{"returnCode":2,"submitId":654,"times":260},{"returnCode":2,"submitId":654,"times":250},{"returnCode":2,"submitId":654,"times":120},{"returnCode":2,"submitId":654,"times":100},{"returnCode":2,"submitId":654,"times":330},{"returnCode":2,"submitId":654,"times":340},{"returnCode":2,"submitId":654,"times":170},{"returnCode":2,"submitId":654,"times":190},{"returnCode":2,"submitId":654,"times":180},{"returnCode":2,"submitId":654,"times":330},{"returnCode":2,"submitId":654,"times":370},{"returnCode":2,"submitId":654,"times":190},{"returnCode":2,"submitId":654,"times":370},{"returnCode":2,"submitId":654,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (655, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":655,"times":230},{"returnCode":2,"submitId":655,"times":370},{"returnCode":2,"submitId":655,"times":250},{"returnCode":2,"submitId":655,"times":180},{"returnCode":2,"submitId":655,"times":90},{"returnCode":2,"submitId":655,"times":260},{"returnCode":2,"submitId":655,"times":260},{"returnCode":2,"submitId":655,"times":110},{"returnCode":2,"submitId":655,"times":100},{"returnCode":2,"submitId":655,"times":330},{"returnCode":2,"submitId":655,"times":340},{"returnCode":2,"submitId":655,"times":170},{"returnCode":2,"submitId":655,"times":190},{"returnCode":2,"submitId":655,"times":180},{"returnCode":2,"submitId":655,"times":330},{"returnCode":2,"submitId":655,"times":370},{"returnCode":2,"submitId":655,"times":200},{"returnCode":2,"submitId":655,"times":370},{"returnCode":2,"submitId":655,"times":380},{"returnCode":2,"submitId":655,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (656, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":656,"times":230},{"returnCode":2,"submitId":656,"times":370},{"returnCode":2,"submitId":656,"times":250},{"returnCode":2,"submitId":656,"times":180},{"returnCode":2,"submitId":656,"times":90},{"returnCode":2,"submitId":656,"times":250},{"returnCode":2,"submitId":656,"times":260},{"returnCode":2,"submitId":656,"times":120},{"returnCode":2,"submitId":656,"times":100},{"returnCode":2,"submitId":656,"times":330},{"returnCode":2,"submitId":656,"times":340},{"returnCode":2,"submitId":656,"times":170},{"returnCode":2,"submitId":656,"times":190},{"returnCode":2,"submitId":656,"times":180},{"returnCode":2,"submitId":656,"times":330},{"returnCode":2,"submitId":656,"times":370},{"returnCode":2,"submitId":656,"times":190},{"returnCode":2,"submitId":656,"times":370},{"returnCode":2,"submitId":656,"times":380},{"returnCode":2,"submitId":656,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (657, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":657,"times":230},{"returnCode":2,"submitId":657,"times":370},{"returnCode":2,"submitId":657,"times":250},{"returnCode":2,"submitId":657,"times":180},{"returnCode":2,"submitId":657,"times":90},{"returnCode":2,"submitId":657,"times":260},{"returnCode":2,"submitId":657,"times":250},{"returnCode":2,"submitId":657,"times":120},{"returnCode":2,"submitId":657,"times":90},{"returnCode":2,"submitId":657,"times":330},{"returnCode":2,"submitId":657,"times":340},{"returnCode":2,"submitId":657,"times":170},{"returnCode":2,"submitId":657,"times":190},{"returnCode":2,"submitId":657,"times":180},{"returnCode":2,"submitId":657,"times":330},{"returnCode":2,"submitId":657,"times":360},{"returnCode":2,"submitId":657,"times":190},{"returnCode":2,"submitId":657,"times":370},{"returnCode":2,"submitId":657,"times":380},{"returnCode":2,"submitId":657,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (658, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":658,"times":230},{"returnCode":2,"submitId":658,"times":370},{"returnCode":2,"submitId":658,"times":250},{"returnCode":2,"submitId":658,"times":180},{"returnCode":2,"submitId":658,"times":90},{"returnCode":2,"submitId":658,"times":260},{"returnCode":2,"submitId":658,"times":260},{"returnCode":2,"submitId":658,"times":120},{"returnCode":2,"submitId":658,"times":100},{"returnCode":2,"submitId":658,"times":330},{"returnCode":2,"submitId":658,"times":340},{"returnCode":2,"submitId":658,"times":170},{"returnCode":2,"submitId":658,"times":190},{"returnCode":2,"submitId":658,"times":180},{"returnCode":2,"submitId":658,"times":330},{"returnCode":2,"submitId":658,"times":360},{"returnCode":2,"submitId":658,"times":190},{"returnCode":2,"submitId":658,"times":380},{"returnCode":2,"submitId":658,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (659, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":659,"times":230},{"returnCode":2,"submitId":659,"times":370},{"returnCode":2,"submitId":659,"times":250},{"returnCode":2,"submitId":659,"times":180},{"returnCode":2,"submitId":659,"times":90},{"returnCode":2,"submitId":659,"times":260},{"returnCode":2,"submitId":659,"times":260},{"returnCode":2,"submitId":659,"times":120},{"returnCode":2,"submitId":659,"times":100},{"returnCode":2,"submitId":659,"times":330},{"returnCode":2,"submitId":659,"times":340},{"returnCode":2,"submitId":659,"times":170},{"returnCode":2,"submitId":659,"times":190},{"returnCode":2,"submitId":659,"times":190},{"returnCode":2,"submitId":659,"times":330},{"returnCode":2,"submitId":659,"times":360},{"returnCode":2,"submitId":659,"times":190},{"returnCode":2,"submitId":659,"times":370},{"returnCode":2,"submitId":659,"times":380},{"returnCode":2,"submitId":659,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (660, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":660,"times":230},{"returnCode":2,"submitId":660,"times":370},{"returnCode":2,"submitId":660,"times":250},{"returnCode":2,"submitId":660,"times":180},{"returnCode":2,"submitId":660,"times":90},{"returnCode":2,"submitId":660,"times":260},{"returnCode":2,"submitId":660,"times":260},{"returnCode":2,"submitId":660,"times":120},{"returnCode":2,"submitId":660,"times":90},{"returnCode":2,"submitId":660,"times":330},{"returnCode":2,"submitId":660,"times":340},{"returnCode":2,"submitId":660,"times":180},{"returnCode":2,"submitId":660,"times":190},{"returnCode":2,"submitId":660,"times":180},{"returnCode":2,"submitId":660,"times":330},{"returnCode":2,"submitId":660,"times":370},{"returnCode":2,"submitId":660,"times":190},{"returnCode":2,"submitId":660,"times":380},{"returnCode":2,"submitId":660,"times":380},{"returnCode":2,"submitId":660,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (661, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":661,"times":230},{"returnCode":2,"submitId":661,"times":370},{"returnCode":2,"submitId":661,"times":250},{"returnCode":2,"submitId":661,"times":180},{"returnCode":2,"submitId":661,"times":90},{"returnCode":2,"submitId":661,"times":260},{"returnCode":2,"submitId":661,"times":260},{"returnCode":2,"submitId":661,"times":120},{"returnCode":2,"submitId":661,"times":100},{"returnCode":2,"submitId":661,"times":330},{"returnCode":2,"submitId":661,"times":340},{"returnCode":2,"submitId":661,"times":170},{"returnCode":2,"submitId":661,"times":190},{"returnCode":2,"submitId":661,"times":180},{"returnCode":2,"submitId":661,"times":330},{"returnCode":2,"submitId":661,"times":370},{"returnCode":2,"submitId":661,"times":190},{"returnCode":2,"submitId":661,"times":370},{"returnCode":2,"submitId":661,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (662, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":662,"times":230},{"returnCode":2,"submitId":662,"times":370},{"returnCode":2,"submitId":662,"times":250},{"returnCode":2,"submitId":662,"times":180},{"returnCode":2,"submitId":662,"times":90},{"returnCode":2,"submitId":662,"times":260},{"returnCode":2,"submitId":662,"times":260},{"returnCode":2,"submitId":662,"times":120},{"returnCode":2,"submitId":662,"times":100},{"returnCode":2,"submitId":662,"times":330},{"returnCode":2,"submitId":662,"times":340},{"returnCode":2,"submitId":662,"times":170},{"returnCode":2,"submitId":662,"times":190},{"returnCode":2,"submitId":662,"times":180},{"returnCode":2,"submitId":662,"times":330},{"returnCode":2,"submitId":662,"times":370},{"returnCode":2,"submitId":662,"times":190},{"returnCode":2,"submitId":662,"times":370},{"returnCode":2,"submitId":662,"times":380},{"returnCode":2,"submitId":662,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (663, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":663,"times":230},{"returnCode":2,"submitId":663,"times":370},{"returnCode":2,"submitId":663,"times":250},{"returnCode":2,"submitId":663,"times":180},{"returnCode":2,"submitId":663,"times":90},{"returnCode":2,"submitId":663,"times":260},{"returnCode":2,"submitId":663,"times":260},{"returnCode":2,"submitId":663,"times":120},{"returnCode":2,"submitId":663,"times":100},{"returnCode":2,"submitId":663,"times":330},{"returnCode":2,"submitId":663,"times":340},{"returnCode":2,"submitId":663,"times":170},{"returnCode":2,"submitId":663,"times":190},{"returnCode":2,"submitId":663,"times":180},{"returnCode":2,"submitId":663,"times":330},{"returnCode":2,"submitId":663,"times":370},{"returnCode":2,"submitId":663,"times":190},{"returnCode":2,"submitId":663,"times":370},{"returnCode":2,"submitId":663,"times":380},{"returnCode":2,"submitId":663,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (664, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":664,"times":230},{"returnCode":2,"submitId":664,"times":370},{"returnCode":2,"submitId":664,"times":250},{"returnCode":2,"submitId":664,"times":180},{"returnCode":2,"submitId":664,"times":90},{"returnCode":2,"submitId":664,"times":260},{"returnCode":2,"submitId":664,"times":260},{"returnCode":2,"submitId":664,"times":120},{"returnCode":2,"submitId":664,"times":100},{"returnCode":2,"submitId":664,"times":320},{"returnCode":2,"submitId":664,"times":340},{"returnCode":2,"submitId":664,"times":170},{"returnCode":2,"submitId":664,"times":190},{"returnCode":2,"submitId":664,"times":180},{"returnCode":2,"submitId":664,"times":330},{"returnCode":2,"submitId":664,"times":360},{"returnCode":2,"submitId":664,"times":190},{"returnCode":2,"submitId":664,"times":370},{"returnCode":2,"submitId":664,"times":380},{"returnCode":2,"submitId":664,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (665, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":665,"times":230},{"returnCode":2,"submitId":665,"times":370},{"returnCode":2,"submitId":665,"times":250},{"returnCode":2,"submitId":665,"times":180},{"returnCode":2,"submitId":665,"times":90},{"returnCode":2,"submitId":665,"times":260},{"returnCode":2,"submitId":665,"times":260},{"returnCode":2,"submitId":665,"times":120},{"returnCode":2,"submitId":665,"times":100},{"returnCode":2,"submitId":665,"times":330},{"returnCode":2,"submitId":665,"times":340},{"returnCode":2,"submitId":665,"times":170},{"returnCode":2,"submitId":665,"times":190},{"returnCode":2,"submitId":665,"times":180},{"returnCode":2,"submitId":665,"times":330},{"returnCode":2,"submitId":665,"times":370},{"returnCode":2,"submitId":665,"times":190},{"returnCode":2,"submitId":665,"times":370},{"returnCode":2,"submitId":665,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (666, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":666,"times":230},{"returnCode":2,"submitId":666,"times":370},{"returnCode":2,"submitId":666,"times":250},{"returnCode":2,"submitId":666,"times":180},{"returnCode":2,"submitId":666,"times":90},{"returnCode":2,"submitId":666,"times":260},{"returnCode":2,"submitId":666,"times":250},{"returnCode":2,"submitId":666,"times":120},{"returnCode":2,"submitId":666,"times":100},{"returnCode":2,"submitId":666,"times":330},{"returnCode":2,"submitId":666,"times":340},{"returnCode":2,"submitId":666,"times":170},{"returnCode":2,"submitId":666,"times":190},{"returnCode":2,"submitId":666,"times":180},{"returnCode":2,"submitId":666,"times":330},{"returnCode":2,"submitId":666,"times":360},{"returnCode":2,"submitId":666,"times":190},{"returnCode":2,"submitId":666,"times":370},{"returnCode":2,"submitId":666,"times":380},{"returnCode":2,"submitId":666,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (667, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":667,"times":230},{"returnCode":2,"submitId":667,"times":370},{"returnCode":2,"submitId":667,"times":250},{"returnCode":2,"submitId":667,"times":180},{"returnCode":2,"submitId":667,"times":90},{"returnCode":2,"submitId":667,"times":260},{"returnCode":2,"submitId":667,"times":260},{"returnCode":2,"submitId":667,"times":120},{"returnCode":2,"submitId":667,"times":100},{"returnCode":2,"submitId":667,"times":330},{"returnCode":2,"submitId":667,"times":340},{"returnCode":2,"submitId":667,"times":170},{"returnCode":2,"submitId":667,"times":190},{"returnCode":2,"submitId":667,"times":180},{"returnCode":2,"submitId":667,"times":330},{"returnCode":2,"submitId":667,"times":370},{"returnCode":2,"submitId":667,"times":190},{"returnCode":2,"submitId":667,"times":370},{"returnCode":2,"submitId":667,"times":380},{"returnCode":2,"submitId":667,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (668, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":668,"times":230},{"returnCode":2,"submitId":668,"times":370},{"returnCode":2,"submitId":668,"times":260},{"returnCode":2,"submitId":668,"times":180},{"returnCode":2,"submitId":668,"times":90},{"returnCode":2,"submitId":668,"times":260},{"returnCode":2,"submitId":668,"times":250},{"returnCode":2,"submitId":668,"times":120},{"returnCode":2,"submitId":668,"times":100},{"returnCode":2,"submitId":668,"times":330},{"returnCode":2,"submitId":668,"times":340},{"returnCode":2,"submitId":668,"times":170},{"returnCode":2,"submitId":668,"times":190},{"returnCode":2,"submitId":668,"times":180},{"returnCode":2,"submitId":668,"times":330},{"returnCode":2,"submitId":668,"times":370},{"returnCode":2,"submitId":668,"times":190},{"returnCode":2,"submitId":668,"times":370},{"returnCode":2,"submitId":668,"times":380},{"returnCode":2,"submitId":668,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (669, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":669,"times":230},{"returnCode":2,"submitId":669,"times":370},{"returnCode":2,"submitId":669,"times":250},{"returnCode":2,"submitId":669,"times":180},{"returnCode":2,"submitId":669,"times":90},{"returnCode":2,"submitId":669,"times":260},{"returnCode":2,"submitId":669,"times":260},{"returnCode":2,"submitId":669,"times":120},{"returnCode":2,"submitId":669,"times":100},{"returnCode":2,"submitId":669,"times":330},{"returnCode":2,"submitId":669,"times":340},{"returnCode":2,"submitId":669,"times":170},{"returnCode":2,"submitId":669,"times":190},{"returnCode":2,"submitId":669,"times":180},{"returnCode":2,"submitId":669,"times":330},{"returnCode":2,"submitId":669,"times":360},{"returnCode":2,"submitId":669,"times":190},{"returnCode":2,"submitId":669,"times":380},{"returnCode":2,"submitId":669,"times":380},{"returnCode":2,"submitId":669,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (670, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":670,"times":230},{"returnCode":2,"submitId":670,"times":370},{"returnCode":2,"submitId":670,"times":250},{"returnCode":2,"submitId":670,"times":180},{"returnCode":2,"submitId":670,"times":90},{"returnCode":2,"submitId":670,"times":260},{"returnCode":2,"submitId":670,"times":260},{"returnCode":2,"submitId":670,"times":120},{"returnCode":2,"submitId":670,"times":100},{"returnCode":2,"submitId":670,"times":330},{"returnCode":2,"submitId":670,"times":340},{"returnCode":2,"submitId":670,"times":170},{"returnCode":2,"submitId":670,"times":190},{"returnCode":2,"submitId":670,"times":180},{"returnCode":2,"submitId":670,"times":330},{"returnCode":2,"submitId":670,"times":370},{"returnCode":2,"submitId":670,"times":190},{"returnCode":2,"submitId":670,"times":370},{"returnCode":2,"submitId":670,"times":380},{"returnCode":2,"submitId":670,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (671, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":671,"times":230},{"returnCode":2,"submitId":671,"times":370},{"returnCode":2,"submitId":671,"times":250},{"returnCode":2,"submitId":671,"times":180},{"returnCode":2,"submitId":671,"times":90},{"returnCode":2,"submitId":671,"times":260},{"returnCode":2,"submitId":671,"times":260},{"returnCode":2,"submitId":671,"times":120},{"returnCode":2,"submitId":671,"times":100},{"returnCode":2,"submitId":671,"times":330},{"returnCode":2,"submitId":671,"times":340},{"returnCode":2,"submitId":671,"times":170},{"returnCode":2,"submitId":671,"times":190},{"returnCode":2,"submitId":671,"times":180},{"returnCode":2,"submitId":671,"times":330},{"returnCode":2,"submitId":671,"times":360},{"returnCode":2,"submitId":671,"times":190},{"returnCode":2,"submitId":671,"times":380},{"returnCode":2,"submitId":671,"times":380},{"returnCode":2,"submitId":671,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (672, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":672,"times":230},{"returnCode":2,"submitId":672,"times":370},{"returnCode":2,"submitId":672,"times":250},{"returnCode":2,"submitId":672,"times":180},{"returnCode":2,"submitId":672,"times":90},{"returnCode":2,"submitId":672,"times":260},{"returnCode":2,"submitId":672,"times":250},{"returnCode":2,"submitId":672,"times":120},{"returnCode":2,"submitId":672,"times":100},{"returnCode":2,"submitId":672,"times":320},{"returnCode":2,"submitId":672,"times":340},{"returnCode":2,"submitId":672,"times":170},{"returnCode":2,"submitId":672,"times":190},{"returnCode":2,"submitId":672,"times":180},{"returnCode":2,"submitId":672,"times":330},{"returnCode":2,"submitId":672,"times":370},{"returnCode":2,"submitId":672,"times":190},{"returnCode":2,"submitId":672,"times":370},{"returnCode":2,"submitId":672,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (673, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":673,"times":230},{"returnCode":2,"submitId":673,"times":370},{"returnCode":2,"submitId":673,"times":250},{"returnCode":2,"submitId":673,"times":180},{"returnCode":2,"submitId":673,"times":90},{"returnCode":2,"submitId":673,"times":260},{"returnCode":2,"submitId":673,"times":250},{"returnCode":2,"submitId":673,"times":120},{"returnCode":2,"submitId":673,"times":100},{"returnCode":2,"submitId":673,"times":330},{"returnCode":2,"submitId":673,"times":340},{"returnCode":2,"submitId":673,"times":170},{"returnCode":2,"submitId":673,"times":190},{"returnCode":2,"submitId":673,"times":180},{"returnCode":2,"submitId":673,"times":330},{"returnCode":2,"submitId":673,"times":360},{"returnCode":2,"submitId":673,"times":190},{"returnCode":2,"submitId":673,"times":370},{"returnCode":2,"submitId":673,"times":370},{"returnCode":2,"submitId":673,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (674, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":674,"times":230},{"returnCode":2,"submitId":674,"times":370},{"returnCode":2,"submitId":674,"times":250},{"returnCode":2,"submitId":674,"times":180},{"returnCode":2,"submitId":674,"times":90},{"returnCode":2,"submitId":674,"times":260},{"returnCode":2,"submitId":674,"times":260},{"returnCode":2,"submitId":674,"times":120},{"returnCode":2,"submitId":674,"times":100},{"returnCode":2,"submitId":674,"times":330},{"returnCode":2,"submitId":674,"times":340},{"returnCode":2,"submitId":674,"times":170},{"returnCode":2,"submitId":674,"times":180},{"returnCode":2,"submitId":674,"times":180},{"returnCode":2,"submitId":674,"times":330},{"returnCode":2,"submitId":674,"times":360},{"returnCode":2,"submitId":674,"times":190},{"returnCode":2,"submitId":674,"times":370},{"returnCode":2,"submitId":674,"times":380},{"returnCode":2,"submitId":674,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (675, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":675,"times":230},{"returnCode":2,"submitId":675,"times":370},{"returnCode":2,"submitId":675,"times":250},{"returnCode":2,"submitId":675,"times":180},{"returnCode":2,"submitId":675,"times":90},{"returnCode":2,"submitId":675,"times":260},{"returnCode":2,"submitId":675,"times":250},{"returnCode":2,"submitId":675,"times":120},{"returnCode":2,"submitId":675,"times":100},{"returnCode":2,"submitId":675,"times":330},{"returnCode":2,"submitId":675,"times":340},{"returnCode":2,"submitId":675,"times":170},{"returnCode":2,"submitId":675,"times":190},{"returnCode":2,"submitId":675,"times":190},{"returnCode":2,"submitId":675,"times":330},{"returnCode":2,"submitId":675,"times":370},{"returnCode":2,"submitId":675,"times":190},{"returnCode":2,"submitId":675,"times":370},{"returnCode":2,"submitId":675,"times":380},{"returnCode":2,"submitId":675,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (676, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":676,"times":230},{"returnCode":2,"submitId":676,"times":370},{"returnCode":2,"submitId":676,"times":250},{"returnCode":2,"submitId":676,"times":180},{"returnCode":2,"submitId":676,"times":90},{"returnCode":2,"submitId":676,"times":260},{"returnCode":2,"submitId":676,"times":260},{"returnCode":2,"submitId":676,"times":120},{"returnCode":2,"submitId":676,"times":100},{"returnCode":2,"submitId":676,"times":320},{"returnCode":2,"submitId":676,"times":330},{"returnCode":2,"submitId":676,"times":170},{"returnCode":2,"submitId":676,"times":190},{"returnCode":2,"submitId":676,"times":180},{"returnCode":2,"submitId":676,"times":330},{"returnCode":2,"submitId":676,"times":360},{"returnCode":2,"submitId":676,"times":190},{"returnCode":2,"submitId":676,"times":380},{"returnCode":2,"submitId":676,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (677, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":677,"times":230},{"returnCode":2,"submitId":677,"times":370},{"returnCode":2,"submitId":677,"times":250},{"returnCode":2,"submitId":677,"times":180},{"returnCode":2,"submitId":677,"times":90},{"returnCode":2,"submitId":677,"times":250},{"returnCode":2,"submitId":677,"times":250},{"returnCode":2,"submitId":677,"times":120},{"returnCode":2,"submitId":677,"times":100},{"returnCode":2,"submitId":677,"times":330},{"returnCode":2,"submitId":677,"times":340},{"returnCode":2,"submitId":677,"times":170},{"returnCode":2,"submitId":677,"times":190},{"returnCode":2,"submitId":677,"times":180},{"returnCode":2,"submitId":677,"times":330},{"returnCode":2,"submitId":677,"times":370},{"returnCode":2,"submitId":677,"times":190},{"returnCode":2,"submitId":677,"times":370},{"returnCode":2,"submitId":677,"times":370},{"returnCode":2,"submitId":677,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (678, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":678,"times":230},{"returnCode":2,"submitId":678,"times":370},{"returnCode":2,"submitId":678,"times":250},{"returnCode":2,"submitId":678,"times":180},{"returnCode":2,"submitId":678,"times":90},{"returnCode":2,"submitId":678,"times":260},{"returnCode":2,"submitId":678,"times":260},{"returnCode":2,"submitId":678,"times":120},{"returnCode":2,"submitId":678,"times":100},{"returnCode":2,"submitId":678,"times":330},{"returnCode":2,"submitId":678,"times":340},{"returnCode":2,"submitId":678,"times":170},{"returnCode":2,"submitId":678,"times":190},{"returnCode":2,"submitId":678,"times":180},{"returnCode":2,"submitId":678,"times":330},{"returnCode":2,"submitId":678,"times":360},{"returnCode":2,"submitId":678,"times":190},{"returnCode":2,"submitId":678,"times":370},{"returnCode":2,"submitId":678,"times":380},{"returnCode":2,"submitId":678,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (679, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":679,"times":230},{"returnCode":2,"submitId":679,"times":370},{"returnCode":2,"submitId":679,"times":250},{"returnCode":2,"submitId":679,"times":180},{"returnCode":2,"submitId":679,"times":90},{"returnCode":2,"submitId":679,"times":260},{"returnCode":2,"submitId":679,"times":260},{"returnCode":2,"submitId":679,"times":120},{"returnCode":2,"submitId":679,"times":100},{"returnCode":2,"submitId":679,"times":330},{"returnCode":2,"submitId":679,"times":340},{"returnCode":2,"submitId":679,"times":170},{"returnCode":2,"submitId":679,"times":190},{"returnCode":2,"submitId":679,"times":180},{"returnCode":2,"submitId":679,"times":330},{"returnCode":2,"submitId":679,"times":360},{"returnCode":2,"submitId":679,"times":190},{"returnCode":2,"submitId":679,"times":370},{"returnCode":2,"submitId":679,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (680, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":680,"times":230},{"returnCode":2,"submitId":680,"times":370},{"returnCode":2,"submitId":680,"times":250},{"returnCode":2,"submitId":680,"times":180},{"returnCode":2,"submitId":680,"times":90},{"returnCode":2,"submitId":680,"times":260},{"returnCode":2,"submitId":680,"times":260},{"returnCode":2,"submitId":680,"times":120},{"returnCode":2,"submitId":680,"times":100},{"returnCode":2,"submitId":680,"times":330},{"returnCode":2,"submitId":680,"times":340},{"returnCode":2,"submitId":680,"times":170},{"returnCode":2,"submitId":680,"times":190},{"returnCode":2,"submitId":680,"times":180},{"returnCode":2,"submitId":680,"times":330},{"returnCode":2,"submitId":680,"times":360},{"returnCode":2,"submitId":680,"times":190},{"returnCode":2,"submitId":680,"times":370},{"returnCode":2,"submitId":680,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (681, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":681,"times":230},{"returnCode":2,"submitId":681,"times":370},{"returnCode":2,"submitId":681,"times":250},{"returnCode":2,"submitId":681,"times":180},{"returnCode":2,"submitId":681,"times":90},{"returnCode":2,"submitId":681,"times":260},{"returnCode":2,"submitId":681,"times":250},{"returnCode":2,"submitId":681,"times":120},{"returnCode":2,"submitId":681,"times":100},{"returnCode":2,"submitId":681,"times":330},{"returnCode":2,"submitId":681,"times":340},{"returnCode":2,"submitId":681,"times":170},{"returnCode":2,"submitId":681,"times":190},{"returnCode":2,"submitId":681,"times":180},{"returnCode":2,"submitId":681,"times":330},{"returnCode":2,"submitId":681,"times":370},{"returnCode":2,"submitId":681,"times":190},{"returnCode":2,"submitId":681,"times":370},{"returnCode":2,"submitId":681,"times":380},{"returnCode":2,"submitId":681,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (682, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":682,"times":230},{"returnCode":2,"submitId":682,"times":370},{"returnCode":2,"submitId":682,"times":250},{"returnCode":2,"submitId":682,"times":180},{"returnCode":2,"submitId":682,"times":90},{"returnCode":2,"submitId":682,"times":260},{"returnCode":2,"submitId":682,"times":260},{"returnCode":2,"submitId":682,"times":120},{"returnCode":2,"submitId":682,"times":100},{"returnCode":2,"submitId":682,"times":330},{"returnCode":2,"submitId":682,"times":340},{"returnCode":2,"submitId":682,"times":170},{"returnCode":2,"submitId":682,"times":190},{"returnCode":2,"submitId":682,"times":180},{"returnCode":2,"submitId":682,"times":330},{"returnCode":2,"submitId":682,"times":360},{"returnCode":2,"submitId":682,"times":190},{"returnCode":2,"submitId":682,"times":370},{"returnCode":2,"submitId":682,"times":380},{"returnCode":2,"submitId":682,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (683, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":683,"times":230},{"returnCode":2,"submitId":683,"times":370},{"returnCode":2,"submitId":683,"times":250},{"returnCode":2,"submitId":683,"times":180},{"returnCode":2,"submitId":683,"times":100},{"returnCode":2,"submitId":683,"times":260},{"returnCode":2,"submitId":683,"times":250},{"returnCode":2,"submitId":683,"times":120},{"returnCode":2,"submitId":683,"times":100},{"returnCode":2,"submitId":683,"times":330},{"returnCode":2,"submitId":683,"times":340},{"returnCode":2,"submitId":683,"times":170},{"returnCode":2,"submitId":683,"times":190},{"returnCode":2,"submitId":683,"times":180},{"returnCode":2,"submitId":683,"times":330},{"returnCode":2,"submitId":683,"times":370},{"returnCode":2,"submitId":683,"times":190},{"returnCode":2,"submitId":683,"times":370},{"returnCode":2,"submitId":683,"times":370},{"returnCode":2,"submitId":683,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (684, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":684,"times":230},{"returnCode":2,"submitId":684,"times":370},{"returnCode":2,"submitId":684,"times":250},{"returnCode":2,"submitId":684,"times":180},{"returnCode":2,"submitId":684,"times":90},{"returnCode":2,"submitId":684,"times":260},{"returnCode":2,"submitId":684,"times":250},{"returnCode":2,"submitId":684,"times":120},{"returnCode":2,"submitId":684,"times":100},{"returnCode":2,"submitId":684,"times":330},{"returnCode":2,"submitId":684,"times":340},{"returnCode":2,"submitId":684,"times":170},{"returnCode":2,"submitId":684,"times":190},{"returnCode":2,"submitId":684,"times":180},{"returnCode":2,"submitId":684,"times":330},{"returnCode":2,"submitId":684,"times":370},{"returnCode":2,"submitId":684,"times":200},{"returnCode":2,"submitId":684,"times":370},{"returnCode":2,"submitId":684,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (685, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":685,"times":230},{"returnCode":2,"submitId":685,"times":370},{"returnCode":2,"submitId":685,"times":250},{"returnCode":2,"submitId":685,"times":180},{"returnCode":2,"submitId":685,"times":90},{"returnCode":2,"submitId":685,"times":260},{"returnCode":2,"submitId":685,"times":260},{"returnCode":2,"submitId":685,"times":120},{"returnCode":2,"submitId":685,"times":100},{"returnCode":2,"submitId":685,"times":330},{"returnCode":2,"submitId":685,"times":340},{"returnCode":2,"submitId":685,"times":170},{"returnCode":2,"submitId":685,"times":190},{"returnCode":2,"submitId":685,"times":180},{"returnCode":2,"submitId":685,"times":330},{"returnCode":2,"submitId":685,"times":360},{"returnCode":2,"submitId":685,"times":190},{"returnCode":2,"submitId":685,"times":370},{"returnCode":2,"submitId":685,"times":380},{"returnCode":2,"submitId":685,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (686, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":686,"times":230},{"returnCode":2,"submitId":686,"times":370},{"returnCode":2,"submitId":686,"times":250},{"returnCode":2,"submitId":686,"times":180},{"returnCode":2,"submitId":686,"times":90},{"returnCode":2,"submitId":686,"times":260},{"returnCode":2,"submitId":686,"times":250},{"returnCode":2,"submitId":686,"times":120},{"returnCode":2,"submitId":686,"times":100},{"returnCode":2,"submitId":686,"times":330},{"returnCode":2,"submitId":686,"times":340},{"returnCode":2,"submitId":686,"times":170},{"returnCode":2,"submitId":686,"times":190},{"returnCode":2,"submitId":686,"times":180},{"returnCode":2,"submitId":686,"times":330},{"returnCode":2,"submitId":686,"times":370},{"returnCode":2,"submitId":686,"times":190},{"returnCode":2,"submitId":686,"times":370},{"returnCode":2,"submitId":686,"times":370},{"returnCode":2,"submitId":686,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (687, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":687,"times":230},{"returnCode":2,"submitId":687,"times":370},{"returnCode":2,"submitId":687,"times":250},{"returnCode":2,"submitId":687,"times":180},{"returnCode":2,"submitId":687,"times":90},{"returnCode":2,"submitId":687,"times":260},{"returnCode":2,"submitId":687,"times":250},{"returnCode":2,"submitId":687,"times":120},{"returnCode":2,"submitId":687,"times":100},{"returnCode":2,"submitId":687,"times":330},{"returnCode":2,"submitId":687,"times":330},{"returnCode":2,"submitId":687,"times":170},{"returnCode":2,"submitId":687,"times":190},{"returnCode":2,"submitId":687,"times":180},{"returnCode":2,"submitId":687,"times":330},{"returnCode":2,"submitId":687,"times":360},{"returnCode":2,"submitId":687,"times":190},{"returnCode":2,"submitId":687,"times":370},{"returnCode":2,"submitId":687,"times":370}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (688, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":688,"times":230},{"returnCode":2,"submitId":688,"times":370},{"returnCode":2,"submitId":688,"times":250},{"returnCode":2,"submitId":688,"times":180},{"returnCode":2,"submitId":688,"times":90},{"returnCode":2,"submitId":688,"times":260},{"returnCode":2,"submitId":688,"times":260},{"returnCode":2,"submitId":688,"times":110},{"returnCode":2,"submitId":688,"times":100},{"returnCode":2,"submitId":688,"times":330},{"returnCode":2,"submitId":688,"times":340},{"returnCode":2,"submitId":688,"times":170},{"returnCode":2,"submitId":688,"times":190},{"returnCode":2,"submitId":688,"times":180},{"returnCode":2,"submitId":688,"times":330},{"returnCode":2,"submitId":688,"times":370},{"returnCode":2,"submitId":688,"times":190},{"returnCode":2,"submitId":688,"times":380},{"returnCode":2,"submitId":688,"times":380},{"returnCode":2,"submitId":688,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (689, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":689,"times":230},{"returnCode":2,"submitId":689,"times":370},{"returnCode":2,"submitId":689,"times":250},{"returnCode":2,"submitId":689,"times":180},{"returnCode":2,"submitId":689,"times":90},{"returnCode":2,"submitId":689,"times":260},{"returnCode":2,"submitId":689,"times":260},{"returnCode":2,"submitId":689,"times":120},{"returnCode":2,"submitId":689,"times":100},{"returnCode":2,"submitId":689,"times":330},{"returnCode":2,"submitId":689,"times":340},{"returnCode":2,"submitId":689,"times":170},{"returnCode":2,"submitId":689,"times":190},{"returnCode":2,"submitId":689,"times":180},{"returnCode":2,"submitId":689,"times":330},{"returnCode":2,"submitId":689,"times":370},{"returnCode":2,"submitId":689,"times":190},{"returnCode":2,"submitId":689,"times":370},{"returnCode":2,"submitId":689,"times":380},{"returnCode":2,"submitId":689,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (690, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":690,"times":230},{"returnCode":2,"submitId":690,"times":370},{"returnCode":2,"submitId":690,"times":250},{"returnCode":2,"submitId":690,"times":180},{"returnCode":2,"submitId":690,"times":90},{"returnCode":2,"submitId":690,"times":260},{"returnCode":2,"submitId":690,"times":260},{"returnCode":2,"submitId":690,"times":120},{"returnCode":2,"submitId":690,"times":100},{"returnCode":2,"submitId":690,"times":330},{"returnCode":2,"submitId":690,"times":340},{"returnCode":2,"submitId":690,"times":170},{"returnCode":2,"submitId":690,"times":190},{"returnCode":2,"submitId":690,"times":180},{"returnCode":2,"submitId":690,"times":330},{"returnCode":2,"submitId":690,"times":370},{"returnCode":2,"submitId":690,"times":190},{"returnCode":2,"submitId":690,"times":370},{"returnCode":2,"submitId":690,"times":380},{"returnCode":2,"submitId":690,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (691, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":691,"times":230},{"returnCode":2,"submitId":691,"times":370},{"returnCode":2,"submitId":691,"times":250},{"returnCode":2,"submitId":691,"times":180},{"returnCode":2,"submitId":691,"times":90},{"returnCode":2,"submitId":691,"times":260},{"returnCode":2,"submitId":691,"times":260},{"returnCode":2,"submitId":691,"times":120},{"returnCode":2,"submitId":691,"times":100},{"returnCode":2,"submitId":691,"times":330},{"returnCode":2,"submitId":691,"times":340},{"returnCode":2,"submitId":691,"times":170},{"returnCode":2,"submitId":691,"times":190},{"returnCode":2,"submitId":691,"times":180},{"returnCode":2,"submitId":691,"times":330},{"returnCode":2,"submitId":691,"times":360},{"returnCode":2,"submitId":691,"times":190},{"returnCode":2,"submitId":691,"times":370},{"returnCode":2,"submitId":691,"times":370},{"returnCode":2,"submitId":691,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (692, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":692,"times":230},{"returnCode":2,"submitId":692,"times":370},{"returnCode":2,"submitId":692,"times":250},{"returnCode":2,"submitId":692,"times":180},{"returnCode":2,"submitId":692,"times":90},{"returnCode":2,"submitId":692,"times":250},{"returnCode":2,"submitId":692,"times":250},{"returnCode":2,"submitId":692,"times":120},{"returnCode":2,"submitId":692,"times":90},{"returnCode":2,"submitId":692,"times":330},{"returnCode":2,"submitId":692,"times":330},{"returnCode":2,"submitId":692,"times":170},{"returnCode":2,"submitId":692,"times":190},{"returnCode":2,"submitId":692,"times":180},{"returnCode":2,"submitId":692,"times":330},{"returnCode":2,"submitId":692,"times":360},{"returnCode":2,"submitId":692,"times":190},{"returnCode":2,"submitId":692,"times":370},{"returnCode":2,"submitId":692,"times":380},{"returnCode":2,"submitId":692,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (693, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":693,"times":230},{"returnCode":2,"submitId":693,"times":370},{"returnCode":2,"submitId":693,"times":250},{"returnCode":2,"submitId":693,"times":180},{"returnCode":2,"submitId":693,"times":90},{"returnCode":2,"submitId":693,"times":260},{"returnCode":2,"submitId":693,"times":260},{"returnCode":2,"submitId":693,"times":120},{"returnCode":2,"submitId":693,"times":100},{"returnCode":2,"submitId":693,"times":330},{"returnCode":2,"submitId":693,"times":340},{"returnCode":2,"submitId":693,"times":170},{"returnCode":2,"submitId":693,"times":190},{"returnCode":2,"submitId":693,"times":180},{"returnCode":2,"submitId":693,"times":330},{"returnCode":2,"submitId":693,"times":360},{"returnCode":2,"submitId":693,"times":190},{"returnCode":2,"submitId":693,"times":370},{"returnCode":2,"submitId":693,"times":380},{"returnCode":2,"submitId":693,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (694, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":694,"times":230},{"returnCode":2,"submitId":694,"times":370},{"returnCode":2,"submitId":694,"times":250},{"returnCode":2,"submitId":694,"times":180},{"returnCode":2,"submitId":694,"times":90},{"returnCode":2,"submitId":694,"times":260},{"returnCode":2,"submitId":694,"times":260},{"returnCode":2,"submitId":694,"times":120},{"returnCode":2,"submitId":694,"times":100},{"returnCode":2,"submitId":694,"times":330},{"returnCode":2,"submitId":694,"times":330},{"returnCode":2,"submitId":694,"times":170},{"returnCode":2,"submitId":694,"times":190},{"returnCode":2,"submitId":694,"times":180},{"returnCode":2,"submitId":694,"times":330},{"returnCode":2,"submitId":694,"times":360},{"returnCode":2,"submitId":694,"times":190},{"returnCode":2,"submitId":694,"times":370},{"returnCode":2,"submitId":694,"times":380},{"returnCode":2,"submitId":694,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (695, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":695,"times":230},{"returnCode":2,"submitId":695,"times":370},{"returnCode":2,"submitId":695,"times":250},{"returnCode":2,"submitId":695,"times":180},{"returnCode":2,"submitId":695,"times":90},{"returnCode":2,"submitId":695,"times":260},{"returnCode":2,"submitId":695,"times":260},{"returnCode":2,"submitId":695,"times":120},{"returnCode":2,"submitId":695,"times":90},{"returnCode":2,"submitId":695,"times":330},{"returnCode":2,"submitId":695,"times":340},{"returnCode":2,"submitId":695,"times":170},{"returnCode":2,"submitId":695,"times":190},{"returnCode":2,"submitId":695,"times":180},{"returnCode":2,"submitId":695,"times":330},{"returnCode":2,"submitId":695,"times":360},{"returnCode":2,"submitId":695,"times":190},{"returnCode":2,"submitId":695,"times":370},{"returnCode":2,"submitId":695,"times":380},{"returnCode":2,"submitId":695,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (696, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":696,"times":230},{"returnCode":2,"submitId":696,"times":370},{"returnCode":2,"submitId":696,"times":250},{"returnCode":2,"submitId":696,"times":180},{"returnCode":2,"submitId":696,"times":90},{"returnCode":2,"submitId":696,"times":260},{"returnCode":2,"submitId":696,"times":250},{"returnCode":2,"submitId":696,"times":120},{"returnCode":2,"submitId":696,"times":90},{"returnCode":2,"submitId":696,"times":320},{"returnCode":2,"submitId":696,"times":340},{"returnCode":2,"submitId":696,"times":170},{"returnCode":2,"submitId":696,"times":190},{"returnCode":2,"submitId":696,"times":180},{"returnCode":2,"submitId":696,"times":330},{"returnCode":2,"submitId":696,"times":360},{"returnCode":2,"submitId":696,"times":190},{"returnCode":2,"submitId":696,"times":370},{"returnCode":2,"submitId":696,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (697, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":697,"times":230},{"returnCode":2,"submitId":697,"times":370},{"returnCode":2,"submitId":697,"times":250},{"returnCode":2,"submitId":697,"times":180},{"returnCode":2,"submitId":697,"times":90},{"returnCode":2,"submitId":697,"times":250},{"returnCode":2,"submitId":697,"times":250},{"returnCode":2,"submitId":697,"times":120},{"returnCode":2,"submitId":697,"times":100},{"returnCode":2,"submitId":697,"times":330},{"returnCode":2,"submitId":697,"times":340},{"returnCode":2,"submitId":697,"times":170},{"returnCode":2,"submitId":697,"times":190},{"returnCode":2,"submitId":697,"times":180},{"returnCode":2,"submitId":697,"times":330},{"returnCode":2,"submitId":697,"times":360},{"returnCode":2,"submitId":697,"times":200},{"returnCode":2,"submitId":697,"times":370},{"returnCode":2,"submitId":697,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (698, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":698,"times":230},{"returnCode":2,"submitId":698,"times":370},{"returnCode":2,"submitId":698,"times":250},{"returnCode":2,"submitId":698,"times":180},{"returnCode":2,"submitId":698,"times":90},{"returnCode":2,"submitId":698,"times":260},{"returnCode":2,"submitId":698,"times":260},{"returnCode":2,"submitId":698,"times":120},{"returnCode":2,"submitId":698,"times":100},{"returnCode":2,"submitId":698,"times":330},{"returnCode":2,"submitId":698,"times":340},{"returnCode":2,"submitId":698,"times":170},{"returnCode":2,"submitId":698,"times":190},{"returnCode":2,"submitId":698,"times":180},{"returnCode":2,"submitId":698,"times":330},{"returnCode":2,"submitId":698,"times":360},{"returnCode":2,"submitId":698,"times":190},{"returnCode":2,"submitId":698,"times":370},{"returnCode":2,"submitId":698,"times":370}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (699, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":699,"times":230},{"returnCode":2,"submitId":699,"times":360},{"returnCode":2,"submitId":699,"times":250},{"returnCode":2,"submitId":699,"times":180},{"returnCode":2,"submitId":699,"times":90},{"returnCode":2,"submitId":699,"times":260},{"returnCode":2,"submitId":699,"times":260},{"returnCode":2,"submitId":699,"times":120},{"returnCode":2,"submitId":699,"times":100},{"returnCode":2,"submitId":699,"times":330},{"returnCode":2,"submitId":699,"times":340},{"returnCode":2,"submitId":699,"times":170},{"returnCode":2,"submitId":699,"times":190},{"returnCode":2,"submitId":699,"times":180},{"returnCode":2,"submitId":699,"times":330},{"returnCode":2,"submitId":699,"times":360},{"returnCode":2,"submitId":699,"times":190},{"returnCode":2,"submitId":699,"times":370},{"returnCode":2,"submitId":699,"times":380},{"returnCode":2,"submitId":699,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (700, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":700,"times":230},{"returnCode":2,"submitId":700,"times":370},{"returnCode":2,"submitId":700,"times":250},{"returnCode":2,"submitId":700,"times":180},{"returnCode":2,"submitId":700,"times":90},{"returnCode":2,"submitId":700,"times":260},{"returnCode":2,"submitId":700,"times":260},{"returnCode":2,"submitId":700,"times":120},{"returnCode":2,"submitId":700,"times":100},{"returnCode":2,"submitId":700,"times":330},{"returnCode":2,"submitId":700,"times":330},{"returnCode":2,"submitId":700,"times":170},{"returnCode":2,"submitId":700,"times":190},{"returnCode":2,"submitId":700,"times":180},{"returnCode":2,"submitId":700,"times":340},{"returnCode":2,"submitId":700,"times":370},{"returnCode":2,"submitId":700,"times":190},{"returnCode":2,"submitId":700,"times":370},{"returnCode":2,"submitId":700,"times":370},{"returnCode":2,"submitId":700,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (701, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":701,"times":230},{"returnCode":2,"submitId":701,"times":360},{"returnCode":2,"submitId":701,"times":250},{"returnCode":2,"submitId":701,"times":180},{"returnCode":2,"submitId":701,"times":100},{"returnCode":2,"submitId":701,"times":260},{"returnCode":2,"submitId":701,"times":250},{"returnCode":2,"submitId":701,"times":120},{"returnCode":2,"submitId":701,"times":100},{"returnCode":2,"submitId":701,"times":330},{"returnCode":2,"submitId":701,"times":340},{"returnCode":2,"submitId":701,"times":170},{"returnCode":2,"submitId":701,"times":190},{"returnCode":2,"submitId":701,"times":180},{"returnCode":2,"submitId":701,"times":330},{"returnCode":2,"submitId":701,"times":360},{"returnCode":2,"submitId":701,"times":190},{"returnCode":2,"submitId":701,"times":370},{"returnCode":2,"submitId":701,"times":370},{"returnCode":2,"submitId":701,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (702, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":702,"times":230},{"returnCode":2,"submitId":702,"times":370},{"returnCode":2,"submitId":702,"times":250},{"returnCode":2,"submitId":702,"times":180},{"returnCode":2,"submitId":702,"times":90},{"returnCode":2,"submitId":702,"times":260},{"returnCode":2,"submitId":702,"times":250},{"returnCode":2,"submitId":702,"times":120},{"returnCode":2,"submitId":702,"times":100},{"returnCode":2,"submitId":702,"times":330},{"returnCode":2,"submitId":702,"times":340},{"returnCode":2,"submitId":702,"times":170},{"returnCode":2,"submitId":702,"times":190},{"returnCode":2,"submitId":702,"times":180},{"returnCode":2,"submitId":702,"times":330},{"returnCode":2,"submitId":702,"times":360},{"returnCode":2,"submitId":702,"times":190},{"returnCode":2,"submitId":702,"times":370},{"returnCode":2,"submitId":702,"times":380},{"returnCode":2,"submitId":702,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (703, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":703,"times":230},{"returnCode":2,"submitId":703,"times":370},{"returnCode":2,"submitId":703,"times":250},{"returnCode":2,"submitId":703,"times":180},{"returnCode":2,"submitId":703,"times":90},{"returnCode":2,"submitId":703,"times":260},{"returnCode":2,"submitId":703,"times":250},{"returnCode":2,"submitId":703,"times":110},{"returnCode":2,"submitId":703,"times":100},{"returnCode":2,"submitId":703,"times":330},{"returnCode":2,"submitId":703,"times":340},{"returnCode":2,"submitId":703,"times":170},{"returnCode":2,"submitId":703,"times":190},{"returnCode":2,"submitId":703,"times":180},{"returnCode":2,"submitId":703,"times":330},{"returnCode":2,"submitId":703,"times":360},{"returnCode":2,"submitId":703,"times":190},{"returnCode":2,"submitId":703,"times":370},{"returnCode":2,"submitId":703,"times":370},{"returnCode":2,"submitId":703,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (704, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":704,"times":230},{"returnCode":2,"submitId":704,"times":370},{"returnCode":2,"submitId":704,"times":250},{"returnCode":2,"submitId":704,"times":180},{"returnCode":2,"submitId":704,"times":90},{"returnCode":2,"submitId":704,"times":260},{"returnCode":2,"submitId":704,"times":260},{"returnCode":2,"submitId":704,"times":120},{"returnCode":2,"submitId":704,"times":100},{"returnCode":2,"submitId":704,"times":330},{"returnCode":2,"submitId":704,"times":340},{"returnCode":2,"submitId":704,"times":170},{"returnCode":2,"submitId":704,"times":190},{"returnCode":2,"submitId":704,"times":180},{"returnCode":2,"submitId":704,"times":330},{"returnCode":2,"submitId":704,"times":360},{"returnCode":2,"submitId":704,"times":190},{"returnCode":2,"submitId":704,"times":370},{"returnCode":2,"submitId":704,"times":380},{"returnCode":2,"submitId":704,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (705, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":705,"times":230},{"returnCode":2,"submitId":705,"times":370},{"returnCode":2,"submitId":705,"times":250},{"returnCode":2,"submitId":705,"times":180},{"returnCode":2,"submitId":705,"times":90},{"returnCode":2,"submitId":705,"times":260},{"returnCode":2,"submitId":705,"times":250},{"returnCode":2,"submitId":705,"times":120},{"returnCode":2,"submitId":705,"times":100},{"returnCode":2,"submitId":705,"times":320},{"returnCode":2,"submitId":705,"times":340},{"returnCode":2,"submitId":705,"times":170},{"returnCode":2,"submitId":705,"times":190},{"returnCode":2,"submitId":705,"times":180},{"returnCode":2,"submitId":705,"times":330},{"returnCode":2,"submitId":705,"times":360},{"returnCode":2,"submitId":705,"times":190},{"returnCode":2,"submitId":705,"times":370},{"returnCode":2,"submitId":705,"times":380},{"returnCode":2,"submitId":705,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (706, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":706,"times":230},{"returnCode":2,"submitId":706,"times":370},{"returnCode":2,"submitId":706,"times":250},{"returnCode":2,"submitId":706,"times":180},{"returnCode":2,"submitId":706,"times":90},{"returnCode":2,"submitId":706,"times":260},{"returnCode":2,"submitId":706,"times":250},{"returnCode":2,"submitId":706,"times":120},{"returnCode":2,"submitId":706,"times":100},{"returnCode":2,"submitId":706,"times":330},{"returnCode":2,"submitId":706,"times":340},{"returnCode":2,"submitId":706,"times":170},{"returnCode":2,"submitId":706,"times":190},{"returnCode":2,"submitId":706,"times":180},{"returnCode":2,"submitId":706,"times":330},{"returnCode":2,"submitId":706,"times":370},{"returnCode":2,"submitId":706,"times":190},{"returnCode":2,"submitId":706,"times":370},{"returnCode":2,"submitId":706,"times":380},{"returnCode":2,"submitId":706,"times":110}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (707, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":707,"times":250},{"returnCode":2,"submitId":707,"times":370},{"returnCode":2,"submitId":707,"times":250},{"returnCode":2,"submitId":707,"times":180},{"returnCode":2,"submitId":707,"times":90},{"returnCode":2,"submitId":707,"times":260},{"returnCode":2,"submitId":707,"times":250},{"returnCode":2,"submitId":707,"times":120},{"returnCode":2,"submitId":707,"times":100},{"returnCode":2,"submitId":707,"times":330},{"returnCode":2,"submitId":707,"times":340},{"returnCode":2,"submitId":707,"times":170},{"returnCode":2,"submitId":707,"times":190},{"returnCode":2,"submitId":707,"times":180},{"returnCode":2,"submitId":707,"times":330},{"returnCode":2,"submitId":707,"times":360},{"returnCode":2,"submitId":707,"times":190},{"returnCode":2,"submitId":707,"times":370},{"returnCode":2,"submitId":707,"times":370},{"returnCode":2,"submitId":707,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (708, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":708,"times":230},{"returnCode":2,"submitId":708,"times":370},{"returnCode":2,"submitId":708,"times":260},{"returnCode":2,"submitId":708,"times":180},{"returnCode":2,"submitId":708,"times":90},{"returnCode":2,"submitId":708,"times":250},{"returnCode":2,"submitId":708,"times":260},{"returnCode":2,"submitId":708,"times":120},{"returnCode":2,"submitId":708,"times":90},{"returnCode":2,"submitId":708,"times":330},{"returnCode":2,"submitId":708,"times":330},{"returnCode":2,"submitId":708,"times":170},{"returnCode":2,"submitId":708,"times":190},{"returnCode":2,"submitId":708,"times":190},{"returnCode":2,"submitId":708,"times":330},{"returnCode":2,"submitId":708,"times":370},{"returnCode":2,"submitId":708,"times":190},{"returnCode":2,"submitId":708,"times":370},{"returnCode":2,"submitId":708,"times":380},{"returnCode":2,"submitId":708,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (709, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":709,"times":230},{"returnCode":2,"submitId":709,"times":370},{"returnCode":2,"submitId":709,"times":250},{"returnCode":2,"submitId":709,"times":180},{"returnCode":2,"submitId":709,"times":90},{"returnCode":2,"submitId":709,"times":260},{"returnCode":2,"submitId":709,"times":260},{"returnCode":2,"submitId":709,"times":120},{"returnCode":2,"submitId":709,"times":100},{"returnCode":2,"submitId":709,"times":320},{"returnCode":2,"submitId":709,"times":340},{"returnCode":2,"submitId":709,"times":170},{"returnCode":2,"submitId":709,"times":190},{"returnCode":2,"submitId":709,"times":180},{"returnCode":2,"submitId":709,"times":330},{"returnCode":2,"submitId":709,"times":360},{"returnCode":2,"submitId":709,"times":190},{"returnCode":2,"submitId":709,"times":370},{"returnCode":2,"submitId":709,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (710, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":710,"times":230},{"returnCode":2,"submitId":710,"times":370},{"returnCode":2,"submitId":710,"times":250},{"returnCode":2,"submitId":710,"times":180},{"returnCode":2,"submitId":710,"times":90},{"returnCode":2,"submitId":710,"times":260},{"returnCode":2,"submitId":710,"times":250},{"returnCode":2,"submitId":710,"times":120},{"returnCode":2,"submitId":710,"times":90},{"returnCode":2,"submitId":710,"times":330},{"returnCode":2,"submitId":710,"times":340},{"returnCode":2,"submitId":710,"times":170},{"returnCode":2,"submitId":710,"times":180},{"returnCode":2,"submitId":710,"times":180},{"returnCode":2,"submitId":710,"times":330},{"returnCode":2,"submitId":710,"times":360},{"returnCode":2,"submitId":710,"times":190},{"returnCode":2,"submitId":710,"times":370},{"returnCode":2,"submitId":710,"times":380},{"returnCode":2,"submitId":710,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (711, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":711,"times":230},{"returnCode":2,"submitId":711,"times":370},{"returnCode":2,"submitId":711,"times":250},{"returnCode":2,"submitId":711,"times":180},{"returnCode":2,"submitId":711,"times":90},{"returnCode":2,"submitId":711,"times":260},{"returnCode":2,"submitId":711,"times":260},{"returnCode":2,"submitId":711,"times":120},{"returnCode":2,"submitId":711,"times":100},{"returnCode":2,"submitId":711,"times":330},{"returnCode":2,"submitId":711,"times":340},{"returnCode":2,"submitId":711,"times":170},{"returnCode":2,"submitId":711,"times":190},{"returnCode":2,"submitId":711,"times":180},{"returnCode":2,"submitId":711,"times":330},{"returnCode":2,"submitId":711,"times":360},{"returnCode":2,"submitId":711,"times":190},{"returnCode":2,"submitId":711,"times":370},{"returnCode":2,"submitId":711,"times":370}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (712, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":712,"times":230},{"returnCode":2,"submitId":712,"times":370},{"returnCode":2,"submitId":712,"times":240},{"returnCode":2,"submitId":712,"times":180},{"returnCode":2,"submitId":712,"times":90},{"returnCode":2,"submitId":712,"times":260},{"returnCode":2,"submitId":712,"times":260},{"returnCode":2,"submitId":712,"times":120},{"returnCode":2,"submitId":712,"times":100},{"returnCode":2,"submitId":712,"times":330},{"returnCode":2,"submitId":712,"times":340},{"returnCode":2,"submitId":712,"times":170},{"returnCode":2,"submitId":712,"times":190},{"returnCode":2,"submitId":712,"times":180},{"returnCode":2,"submitId":712,"times":330},{"returnCode":2,"submitId":712,"times":370},{"returnCode":2,"submitId":712,"times":190},{"returnCode":2,"submitId":712,"times":370},{"returnCode":2,"submitId":712,"times":370},{"returnCode":2,"submitId":712,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (713, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":713,"times":230},{"returnCode":2,"submitId":713,"times":370},{"returnCode":2,"submitId":713,"times":250},{"returnCode":2,"submitId":713,"times":180},{"returnCode":2,"submitId":713,"times":90},{"returnCode":2,"submitId":713,"times":260},{"returnCode":2,"submitId":713,"times":250},{"returnCode":2,"submitId":713,"times":120},{"returnCode":2,"submitId":713,"times":100},{"returnCode":2,"submitId":713,"times":320},{"returnCode":2,"submitId":713,"times":330},{"returnCode":2,"submitId":713,"times":170},{"returnCode":2,"submitId":713,"times":190},{"returnCode":2,"submitId":713,"times":180},{"returnCode":2,"submitId":713,"times":330},{"returnCode":2,"submitId":713,"times":360},{"returnCode":2,"submitId":713,"times":190},{"returnCode":2,"submitId":713,"times":370},{"returnCode":2,"submitId":713,"times":380},{"returnCode":2,"submitId":713,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (714, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":714,"times":230},{"returnCode":2,"submitId":714,"times":360},{"returnCode":2,"submitId":714,"times":250},{"returnCode":2,"submitId":714,"times":180},{"returnCode":2,"submitId":714,"times":90},{"returnCode":2,"submitId":714,"times":260},{"returnCode":2,"submitId":714,"times":250},{"returnCode":2,"submitId":714,"times":120},{"returnCode":2,"submitId":714,"times":100},{"returnCode":2,"submitId":714,"times":320},{"returnCode":2,"submitId":714,"times":340},{"returnCode":2,"submitId":714,"times":170},{"returnCode":2,"submitId":714,"times":190},{"returnCode":2,"submitId":714,"times":180},{"returnCode":2,"submitId":714,"times":330},{"returnCode":2,"submitId":714,"times":360},{"returnCode":2,"submitId":714,"times":190},{"returnCode":2,"submitId":714,"times":370},{"returnCode":2,"submitId":714,"times":380},{"returnCode":2,"submitId":714,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (715, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":715,"times":230},{"returnCode":2,"submitId":715,"times":370},{"returnCode":2,"submitId":715,"times":250},{"returnCode":2,"submitId":715,"times":180},{"returnCode":2,"submitId":715,"times":90},{"returnCode":2,"submitId":715,"times":260},{"returnCode":2,"submitId":715,"times":260},{"returnCode":2,"submitId":715,"times":120},{"returnCode":2,"submitId":715,"times":100},{"returnCode":2,"submitId":715,"times":330},{"returnCode":2,"submitId":715,"times":340},{"returnCode":2,"submitId":715,"times":170},{"returnCode":2,"submitId":715,"times":190},{"returnCode":2,"submitId":715,"times":180},{"returnCode":2,"submitId":715,"times":340},{"returnCode":2,"submitId":715,"times":360},{"returnCode":2,"submitId":715,"times":190},{"returnCode":2,"submitId":715,"times":370},{"returnCode":2,"submitId":715,"times":380},{"returnCode":2,"submitId":715,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (716, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":716,"times":230},{"returnCode":2,"submitId":716,"times":370},{"returnCode":2,"submitId":716,"times":250},{"returnCode":2,"submitId":716,"times":180},{"returnCode":2,"submitId":716,"times":90},{"returnCode":2,"submitId":716,"times":260},{"returnCode":2,"submitId":716,"times":250},{"returnCode":2,"submitId":716,"times":120},{"returnCode":2,"submitId":716,"times":100},{"returnCode":2,"submitId":716,"times":330},{"returnCode":2,"submitId":716,"times":340},{"returnCode":2,"submitId":716,"times":180},{"returnCode":2,"submitId":716,"times":190},{"returnCode":2,"submitId":716,"times":180},{"returnCode":2,"submitId":716,"times":330},{"returnCode":2,"submitId":716,"times":370},{"returnCode":2,"submitId":716,"times":190},{"returnCode":2,"submitId":716,"times":370},{"returnCode":2,"submitId":716,"times":380},{"returnCode":2,"submitId":716,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (717, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 390, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":717,"times":230},{"returnCode":2,"submitId":717,"times":360},{"returnCode":2,"submitId":717,"times":250},{"returnCode":2,"submitId":717,"times":180},{"returnCode":2,"submitId":717,"times":90},{"returnCode":2,"submitId":717,"times":260},{"returnCode":2,"submitId":717,"times":250},{"returnCode":2,"submitId":717,"times":120},{"returnCode":2,"submitId":717,"times":100},{"returnCode":2,"submitId":717,"times":330},{"returnCode":2,"submitId":717,"times":340},{"returnCode":2,"submitId":717,"times":170},{"returnCode":2,"submitId":717,"times":190},{"returnCode":2,"submitId":717,"times":180},{"returnCode":2,"submitId":717,"times":340},{"returnCode":2,"submitId":717,"times":370},{"returnCode":2,"submitId":717,"times":190},{"returnCode":2,"submitId":717,"times":390},{"returnCode":2,"submitId":717,"times":370},{"returnCode":2,"submitId":717,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (718, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":718,"times":230},{"returnCode":2,"submitId":718,"times":370},{"returnCode":2,"submitId":718,"times":250},{"returnCode":2,"submitId":718,"times":180},{"returnCode":2,"submitId":718,"times":90},{"returnCode":2,"submitId":718,"times":260},{"returnCode":2,"submitId":718,"times":260},{"returnCode":2,"submitId":718,"times":120},{"returnCode":2,"submitId":718,"times":100},{"returnCode":2,"submitId":718,"times":330},{"returnCode":2,"submitId":718,"times":340},{"returnCode":2,"submitId":718,"times":170},{"returnCode":2,"submitId":718,"times":190},{"returnCode":2,"submitId":718,"times":180},{"returnCode":2,"submitId":718,"times":330},{"returnCode":2,"submitId":718,"times":360},{"returnCode":2,"submitId":718,"times":200},{"returnCode":2,"submitId":718,"times":370},{"returnCode":2,"submitId":718,"times":380}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (719, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":719,"times":230},{"returnCode":2,"submitId":719,"times":370},{"returnCode":2,"submitId":719,"times":250},{"returnCode":2,"submitId":719,"times":180},{"returnCode":2,"submitId":719,"times":90},{"returnCode":2,"submitId":719,"times":260},{"returnCode":2,"submitId":719,"times":250},{"returnCode":2,"submitId":719,"times":120},{"returnCode":2,"submitId":719,"times":100},{"returnCode":2,"submitId":719,"times":330},{"returnCode":2,"submitId":719,"times":340},{"returnCode":2,"submitId":719,"times":170},{"returnCode":2,"submitId":719,"times":190},{"returnCode":2,"submitId":719,"times":180},{"returnCode":2,"submitId":719,"times":330},{"returnCode":2,"submitId":719,"times":370},{"returnCode":2,"submitId":719,"times":190},{"returnCode":2,"submitId":719,"times":370},{"returnCode":2,"submitId":719,"times":380},{"returnCode":2,"submitId":719,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (720, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":720,"times":230},{"returnCode":2,"submitId":720,"times":370},{"returnCode":2,"submitId":720,"times":250},{"returnCode":2,"submitId":720,"times":180},{"returnCode":2,"submitId":720,"times":90},{"returnCode":2,"submitId":720,"times":260},{"returnCode":2,"submitId":720,"times":250},{"returnCode":2,"submitId":720,"times":120},{"returnCode":2,"submitId":720,"times":100},{"returnCode":2,"submitId":720,"times":330},{"returnCode":2,"submitId":720,"times":340},{"returnCode":2,"submitId":720,"times":170},{"returnCode":2,"submitId":720,"times":190},{"returnCode":2,"submitId":720,"times":180},{"returnCode":2,"submitId":720,"times":330},{"returnCode":2,"submitId":720,"times":360},{"returnCode":2,"submitId":720,"times":190},{"returnCode":2,"submitId":720,"times":370},{"returnCode":2,"submitId":720,"times":380},{"returnCode":2,"submitId":720,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (722, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":722,"times":220},{"returnCode":2,"submitId":722,"times":370},{"returnCode":2,"submitId":722,"times":250},{"returnCode":2,"submitId":722,"times":180},{"returnCode":2,"submitId":722,"times":90},{"returnCode":2,"submitId":722,"times":250},{"returnCode":2,"submitId":722,"times":250},{"returnCode":2,"submitId":722,"times":120},{"returnCode":2,"submitId":722,"times":100},{"returnCode":2,"submitId":722,"times":330},{"returnCode":2,"submitId":722,"times":340},{"returnCode":2,"submitId":722,"times":170},{"returnCode":2,"submitId":722,"times":190},{"returnCode":2,"submitId":722,"times":180},{"returnCode":2,"submitId":722,"times":330},{"returnCode":2,"submitId":722,"times":370},{"returnCode":2,"submitId":722,"times":190},{"returnCode":2,"submitId":722,"times":370},{"returnCode":2,"submitId":722,"times":370},{"returnCode":2,"submitId":722,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (723, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":723,"times":230},{"returnCode":2,"submitId":723,"times":370},{"returnCode":2,"submitId":723,"times":250},{"returnCode":2,"submitId":723,"times":180},{"returnCode":2,"submitId":723,"times":90},{"returnCode":2,"submitId":723,"times":260},{"returnCode":2,"submitId":723,"times":260},{"returnCode":2,"submitId":723,"times":120},{"returnCode":2,"submitId":723,"times":100},{"returnCode":2,"submitId":723,"times":330},{"returnCode":2,"submitId":723,"times":340},{"returnCode":2,"submitId":723,"times":170},{"returnCode":2,"submitId":723,"times":190},{"returnCode":2,"submitId":723,"times":180},{"returnCode":2,"submitId":723,"times":330},{"returnCode":2,"submitId":723,"times":370},{"returnCode":2,"submitId":723,"times":190},{"returnCode":2,"submitId":723,"times":370},{"returnCode":2,"submitId":723,"times":380},{"returnCode":2,"submitId":723,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2048, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 370, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2048,"times":230},{"returnCode":2,"submitId":2048,"times":370},{"returnCode":2,"submitId":2048,"times":250},{"returnCode":2,"submitId":2048,"times":180},{"returnCode":2,"submitId":2048,"times":90},{"returnCode":2,"submitId":2048,"times":250},{"returnCode":2,"submitId":2048,"times":260},{"returnCode":2,"submitId":2048,"times":120},{"returnCode":2,"submitId":2048,"times":100},{"returnCode":2,"submitId":2048,"times":330},{"returnCode":2,"submitId":2048,"times":340},{"returnCode":2,"submitId":2048,"times":170},{"returnCode":2,"submitId":2048,"times":190},{"returnCode":2,"submitId":2048,"times":180},{"returnCode":2,"submitId":2048,"times":330},{"returnCode":2,"submitId":2048,"times":370},{"returnCode":2,"submitId":2048,"times":190},{"returnCode":2,"submitId":2048,"times":370},{"returnCode":2,"submitId":2048,"times":370}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2049, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2049,"times":230},{"returnCode":2,"submitId":2049,"times":370},{"returnCode":2,"submitId":2049,"times":250},{"returnCode":2,"submitId":2049,"times":180},{"returnCode":2,"submitId":2049,"times":90},{"returnCode":2,"submitId":2049,"times":260},{"returnCode":2,"submitId":2049,"times":260},{"returnCode":2,"submitId":2049,"times":120},{"returnCode":2,"submitId":2049,"times":100},{"returnCode":2,"submitId":2049,"times":330},{"returnCode":2,"submitId":2049,"times":340},{"returnCode":2,"submitId":2049,"times":170},{"returnCode":2,"submitId":2049,"times":190},{"returnCode":2,"submitId":2049,"times":180},{"returnCode":2,"submitId":2049,"times":330},{"returnCode":2,"submitId":2049,"times":370},{"returnCode":2,"submitId":2049,"times":190},{"returnCode":2,"submitId":2049,"times":370},{"returnCode":2,"submitId":2049,"times":380},{"returnCode":2,"submitId":2049,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2050, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 4, 2, 380, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2050,"times":230},{"returnCode":2,"submitId":2050,"times":370},{"returnCode":2,"submitId":2050,"times":250},{"returnCode":2,"submitId":2050,"times":180},{"returnCode":2,"submitId":2050,"times":90},{"returnCode":2,"submitId":2050,"times":260},{"returnCode":2,"submitId":2050,"times":260},{"returnCode":2,"submitId":2050,"times":120},{"returnCode":2,"submitId":2050,"times":100},{"returnCode":2,"submitId":2050,"times":330},{"returnCode":2,"submitId":2050,"times":340},{"returnCode":2,"submitId":2050,"times":170},{"returnCode":2,"submitId":2050,"times":190},{"returnCode":2,"submitId":2050,"times":180},{"returnCode":2,"submitId":2050,"times":340},{"returnCode":2,"submitId":2050,"times":370},{"returnCode":2,"submitId":2050,"times":200},{"returnCode":2,"submitId":2050,"times":370},{"returnCode":2,"submitId":2050,"times":380},{"returnCode":2,"submitId":2050,"times":120}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2051, 77, null, 'using namespace std;int main(){int a;cin>>a;while(true);}', 1, 7, null, null, 'stdout:
errout:
/main.cpp: In function ''int main()'':
/main.cpp:1:38: error: ''cin'' was not declared in this scope
    1 | using namespace std;int main(){int a;cin>>a;while(true);}
      |                                      ^~~
/main.cpp:1:1: note: ''std::cin'' is defined in header ''<iostream>''; did you forget to ''#include <iostream>''?
  +++ |+#include <iostream>
    1 | using namespace std;int main(){int a;cin>>a;while(true);}
', '[]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2052, 77, null, 'using namespace std;int main(){int a;cin>>a;while(true);}', 1, 8, null, null, 'stdout:
errout:
/main.cpp: In function ''int main()'':
/main.cpp:1:38: error: ''cin'' was not declared in this scope
    1 | using namespace std;int main(){int a;cin>>a;while(true);}
      |                                      ^~~
/main.cpp:1:1: note: ''std::cin'' is defined in header ''<iostream>''; did you forget to ''#include <iostream>''?
  +++ |+#include <iostream>
    1 | using namespace std;int main(){int a;cin>>a;while(true);}
', '[{"returnCode":7,"submitId":2052,"times":0}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2053, 77, null, 'using namespace std;int main(){int a;cin>>a;while(true);}', 1, 6, null, null, 'stdout:
errout:
/main.cpp: In function ''int main()'':
/main.cpp:1:38: error: ''cin'' was not declared in this scope
    1 | using namespace std;int main(){int a;cin>>a;while(true);}
      |                                      ^~~
/main.cpp:1:1: note: ''std::cin'' is defined in header ''<iostream>''; did you forget to ''#include <iostream>''?
  +++ |+#include <iostream>
    1 | using namespace std;int main(){int a;cin>>a;while(true);}
', '[{"returnCode":7,"submitId":2053,"times":0}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2054, 77, null, 'using namespace std;int main(){int a;cin>>a;while(true);}', 1, 7, null, null, 'stdout:
errout:
/main.cpp: In function ''int main()'':
/main.cpp:1:38: error: ''cin'' was not declared in this scope
    1 | using namespace std;int main(){int a;cin>>a;while(true);}
      |                                      ^~~
/main.cpp:1:1: note: ''std::cin'' is defined in header ''<iostream>''; did you forget to ''#include <iostream>''?
  +++ |+#include <iostream>
    1 | using namespace std;int main(){int a;cin>>a;while(true);}
', '[{"returnCode":7,"submitId":2054,"times":0}]', null, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2055, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 4, null, null, null, null, '[]', 0, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2056, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 4, null, null, null, null, '[]', 0, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2057, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 4, 4, null, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2057,"times":390},{"returnCode":2,"submitId":2057,"times":420},{"returnCode":2,"submitId":2057,"times":310},{"returnCode":2,"submitId":2057,"times":290},{"returnCode":2,"submitId":2057,"times":230},{"returnCode":2,"submitId":2057,"times":440},{"returnCode":2,"submitId":2057,"times":520},{"returnCode":2,"submitId":2057,"times":170},{"returnCode":2,"submitId":2057,"times":340},{"returnCode":4,"submitId":2057,"times":1000}]', 0, null);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2071, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 4, 4, null, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2071,"times":290},{"returnCode":2,"submitId":2071,"times":920},{"returnCode":4,"submitId":2071,"times":1000},{"returnCode":2,"submitId":2071,"times":920},{"returnCode":4,"submitId":2071,"times":1000}]', 3, 1622218669400);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2072, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 4, 2, 680, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2072,"times":350},{"returnCode":2,"submitId":2072,"times":680},{"returnCode":2,"submitId":2072,"times":330},{"returnCode":2,"submitId":2072,"times":340},{"returnCode":2,"submitId":2072,"times":110},{"returnCode":2,"submitId":2072,"times":450},{"returnCode":2,"submitId":2072,"times":310},{"returnCode":2,"submitId":2072,"times":130},{"returnCode":2,"submitId":2072,"times":160},{"returnCode":2,"submitId":2072,"times":410},{"returnCode":2,"submitId":2072,"times":370},{"returnCode":2,"submitId":2072,"times":190},{"returnCode":2,"submitId":2072,"times":260},{"returnCode":2,"submitId":2072,"times":270},{"returnCode":2,"submitId":2072,"times":390},{"returnCode":2,"submitId":2072,"times":390},{"returnCode":2,"submitId":2072,"times":340},{"returnCode":2,"submitId":2072,"times":390},{"returnCode":2,"submitId":2072,"times":520},{"returnCode":2,"submitId":2072,"times":120}]', 3, 1622218935465);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2073, 77, null, 'record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?', 4, 6, null, null, 'stdout:
errout:
/main.cpp:1:1: error: ''record'' does not name a type
    1 | record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?
      | ^~~~~~
', '[]', 3, 1622225145081);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2074, 75, null, 'record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?', 4, 6, null, null, 'stdout:
errout:
/main.cpp:1:1: error: ''record'' does not name a type
    1 | record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?record[i].punish ?
      | ^~~~~~
', '[]', 3, 1622225206666);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2075, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 6, null, null, '编译超时', '[]', 3, 1622225793171);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2076, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 4, null, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2076,"times":710},{"returnCode":2,"submitId":2076,"times":440},{"returnCode":2,"submitId":2076,"times":370},{"returnCode":4,"submitId":2076,"times":1000}]', 3, 1622226088072);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2077, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 4, null, null, 'stdout:
errout:
', '[{"returnCode":4,"submitId":2077,"times":1000}]', 3, 1622226347779);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2078, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 2, 2, 580, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2078,"times":380},{"returnCode":2,"submitId":2078,"times":580},{"returnCode":2,"submitId":2078,"times":340},{"returnCode":2,"submitId":2078,"times":180},{"returnCode":2,"submitId":2078,"times":140},{"returnCode":2,"submitId":2078,"times":260},{"returnCode":2,"submitId":2078,"times":310},{"returnCode":2,"submitId":2078,"times":120},{"returnCode":2,"submitId":2078,"times":110},{"returnCode":2,"submitId":2078,"times":440},{"returnCode":2,"submitId":2078,"times":580},{"returnCode":2,"submitId":2078,"times":200},{"returnCode":2,"submitId":2078,"times":200},{"returnCode":2,"submitId":2078,"times":180},{"returnCode":2,"submitId":2078,"times":350},{"returnCode":2,"submitId":2078,"times":360},{"returnCode":2,"submitId":2078,"times":210},{"returnCode":2,"submitId":2078,"times":470},{"returnCode":2,"submitId":2078,"times":570},{"returnCode":2,"submitId":2078,"times":150}]', 3, 1622227498853);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2079, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 1, 4, null, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2079,"times":370},{"returnCode":2,"submitId":2079,"times":490},{"returnCode":2,"submitId":2079,"times":440},{"returnCode":2,"submitId":2079,"times":210},{"returnCode":2,"submitId":2079,"times":110},{"returnCode":2,"submitId":2079,"times":270},{"returnCode":2,"submitId":2079,"times":280},{"returnCode":2,"submitId":2079,"times":170},{"returnCode":2,"submitId":2079,"times":100},{"returnCode":2,"submitId":2079,"times":350},{"returnCode":2,"submitId":2079,"times":380},{"returnCode":2,"submitId":2079,"times":340},{"returnCode":2,"submitId":2079,"times":550},{"returnCode":4,"submitId":2079,"times":1000}]', 3, 1622228044336);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2080, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 1, 4, null, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2080,"times":850},{"returnCode":2,"submitId":2080,"times":650},{"returnCode":2,"submitId":2080,"times":300},{"returnCode":2,"submitId":2080,"times":290},{"returnCode":2,"submitId":2080,"times":400},{"returnCode":4,"submitId":2080,"times":1000}]', 3, 1622228173521);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2081, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 1, 4, null, null, 'stdout:
errout:
', '[{"returnCode":4,"submitId":2081,"times":1000}]', 3, 1622228292732);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2082, 77, null, ' #include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 1, 4, null, null, 'stdout:
errout:
', '[{"returnCode":4,"submitId":2082,"times":1140}]', 3, 1622228353359);
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info, context_id, submit_time) VALUES (2083, 77, null, '#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cin>>n;
    if(n==1||n==2){
        cout<<1<<endl;
    }else{
        int a=1, b=1;
        for(int i=3;i<=n;i++){
            int c = (a+b);
            if(c>998244353){
                c-=998244353;
            };
            a=b;
            b=c;
        }
        cout<<b<<endl;
    }
}', 1, 2, 540, null, 'stdout:
errout:
', '[{"returnCode":2,"submitId":2083,"times":250},{"returnCode":2,"submitId":2083,"times":540},{"returnCode":2,"submitId":2083,"times":270},{"returnCode":2,"submitId":2083,"times":250},{"returnCode":2,"submitId":2083,"times":150},{"returnCode":2,"submitId":2083,"times":330},{"returnCode":2,"submitId":2083,"times":320},{"returnCode":2,"submitId":2083,"times":140},{"returnCode":2,"submitId":2083,"times":100},{"returnCode":2,"submitId":2083,"times":370},{"returnCode":2,"submitId":2083,"times":330},{"returnCode":2,"submitId":2083,"times":260},{"returnCode":2,"submitId":2083,"times":230},{"returnCode":2,"submitId":2083,"times":240},{"returnCode":2,"submitId":2083,"times":380},{"returnCode":2,"submitId":2083,"times":380},{"returnCode":2,"submitId":2083,"times":260},{"returnCode":2,"submitId":2083,"times":370},{"returnCode":2,"submitId":2083,"times":410},{"returnCode":2,"submitId":2083,"times":230}]', 3, 1622228475018);