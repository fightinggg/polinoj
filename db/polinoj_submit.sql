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
    constraint submit_source_submit_id_uindex
        unique (source_submit_id)
);

INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (14, 17, '35808931', '#include<bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (15, 17, '35809009', '#include<bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (16, 17, '35809036', '#include<bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (17, 17, '35809298', '#include<bits/stdc++.h>
using namespace std;
int main(){
int a,b;cin>>a>>b;cout<<a+b<<endl;
}', 2, 3, 15, 1388, 'stdout:
errout:
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (18, 17, '35809316', '#include<bits/stdc++.h>
using namespace std;
int main(){
int a,b;
while(cin>>a>>b){
cout<<a+b<<endl;
}
}', 2, 2, 0, 1392, 'stdout:
errout:
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (19, 14, '35814310', '//写一点代码', 2, 6, 0, 0, 'stdout:
errout:
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (22, 14, '35867930', '#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>
#include<bits/stdc++.h>', 1, 6, 0, 0, 'stdout:
errout:
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (23, 68, '35898676', 'hjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdfhjgjgjgdfasdf', 1, 6, 0, 0, 'stdout:
errout:
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (25, 75, 'fd211475-c9c7-4f98-af1b-c61b31c6dca6', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (26, 75, '64ee7d97-c0ba-4e01-8c81-cb015c2a64ce', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (27, 75, '2dbd00a0-159c-4694-a91f-f412e35ed69b', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (28, 75, 'ac0b7656-762d-4765-90cc-147b64bbc8d1', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (29, 75, 'b0b3e2f7-e876-4938-9879-57b16ffe4c36', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (30, 75, 'c47c56c0-cbd3-4a7e-ae10-8be263f94878', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (31, 75, '9352e0b0-ebf5-4068-b4f1-17cc7ea222e8', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (32, 75, 'feff9994-de50-400c-a6de-f47f74404f0a', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (33, 75, '1a3200b2-4f3e-40c5-9a00-d008a7a39ef7', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (34, 75, 'e81c3bce-b5ff-47d9-9ddf-45af35d12fea', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (35, 75, 'eb62a029-1d97-49a0-be4f-cc620b1066e4', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (36, 75, 'ee3821b1-37cc-498d-8026-de412bb07721', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (37, 75, '72b00e7d-025e-4970-9525-434af089ebb9', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (38, 75, '7d0464e5-f4c6-48e9-b454-526feafae36f', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (39, 75, '7636d128-263b-412f-873e-d65614e6bf04', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (40, 75, 'e88fe078-e067-49cd-95f1-da2afaa344de', '#include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (41, 75, '63fd9372-1f5b-4fe0-bb4a-d46f284a806e', '#include<bits/stdc++.h>

using namespace std;

int main(){
    int x
}', 2, 7, 9967, 0, 'stdout:
errout:
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (42, 75, 'f231f47f-4b5d-45d7-821e-de96d638c91a', '#include<bits/stdc++.h>

using namespace std;

int main(){
    int x;
    cin>>x;
    cout<<x<<endl;
}', 2, 3, 2277, 0, 'stdout:
errout:
', '[{"returnCode":3,"times":2277}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (43, 75, 'fd2813d8-9409-4b0b-aef8-7a87b3d59a45', '#include <bits/stdc++.h>
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
', '[{"returnCode":2,"times":958},{"returnCode":2,"times":1745},{"returnCode":2,"times":1240}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (44, 75, '65aa548c-1452-45cf-868c-954ea96f4ba8', '#include <bits/stdc++.h>
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
', '[{"returnCode":7,"times":1601}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (45, 75, 'f70dca56-7315-41f9-a7ab-cbfe398434f7', '#include <bits/stdc++.h>
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
', '[{"returnCode":7,"times":1633}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (46, 75, '9ff9a040-c91f-468a-b785-369f15e59151', '#include <bits/stdc++.h>
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
', '[{"returnCode":7,"times":5372}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (47, 75, 'b66430d5-da74-4b3c-a2d2-3ae8cc2fb7de', ' #include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (48, 75, 'e6b2eee7-23eb-4f69-90c4-099f433b3f13', ' #include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (49, 75, 'dfc4e485-ca0d-468d-ab65-64ec8a05e129', '                            aria-disabled={true}
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (50, 75, 'c8ad0349-9d75-401f-857c-adfb6467005a', ' #include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (51, 75, '29203609-75f6-4bbc-8fc9-63004a925dc6', ' #include <bits/stdc++.h>
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (52, 75, 'f4e0b135-16ed-41ae-a7ce-bae813e63112', ' #include <bits/stdc++.h>
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
}', 2, 6, 0, 0, '编译超时', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (53, 75, 'e91bcab7-e43d-4d0f-970d-14ed904c4fa9', '#inclu
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (54, 75, '3bfc809e-07ff-4669-aa8a-77f65ba5ed9c', 'asdfdfds
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
', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (55, 75, '47523926-f9a6-4a9a-bac9-d91a2e70c3d9', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",a+b);
}', 2, 6, 0, 0, '编译超时', '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (56, 75, 'e082c594-a045-414d-bafc-3722cf4a14ff', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",a+b);
}', 2, 3, 3651, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":3651},{"returnCode":2,"times":1583},{"returnCode":3,"times":1454}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (57, 75, '34508631-aa51-435f-825a-646f0e1310d4', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",a+b);
}', 2, 3, 1665, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":1643},{"returnCode":2,"times":1665},{"returnCode":3,"times":1262}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (58, 75, '172b839d-b4a3-4135-af19-4e445dc97579', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",a+b);
}', 2, 3, 1920, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":1920},{"returnCode":2,"times":1841},{"returnCode":3,"times":1631}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (59, 75, '3dc8566e-b7e3-4bf8-a686-d9866311c872', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",a+b);
}', 2, 3, 1736, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":1372},{"returnCode":2,"times":1136},{"returnCode":3,"times":1736}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (60, 75, 'bc41301b-6a7e-4407-8e28-426d86065c43', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\\n",0ll+a+b);
}', 2, 3, 2027, 0, 'stdout:
errout:
', '[{"returnCode":2,"times":1372},{"returnCode":2,"times":2027},{"returnCode":3,"times":1784}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (61, 75, 'f17c8e59-2206-48f7-bfe7-482ea9376851', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
}', 2, 9, 0, 0, null, '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (62, 75, 'ee35cd56-f750-455a-a215-347ad512e101', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
    return -1;
}', 2, 9, 0, 0, null, '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (63, 75, '88954a7f-c550-444a-828c-1e9c5459fc18', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
    return -1;
}', 2, 9, 0, 0, null, '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (64, 75, '598c835f-5cf9-49dd-83b2-70922604865d', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
    return -1;
}', 2, 9, 0, 0, null, '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (65, 75, '497d0776-9081-4773-9a91-8d4e863c715a', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
    return -1;
}', 2, 9, 0, 0, null, '[]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (66, 75, '9d5ddfae-6e01-4f13-8eb2-2edd6d0a7164', '#include<bits/stdc++.h>
using namespace std;

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%lld\\n",0ll+a+b);
    return -1;
}', 2, 7, 50, 0, 'stdout:
errout:
', '[{"returnCode":7,"times":50}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (67, 77, '914031b3-eeb8-479d-b759-d38c158f0aa4', '#include<bits/stdc++.h>
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
', '[{"returnCode":4,"times":1000}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (68, 77, 'ac82da69-3c12-4635-bb7e-490997088f75', '#include<bits/stdc++.h>
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
', '[{"returnCode":4,"times":9860}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (69, 77, '4162c00b-cc5f-4b12-abb8-616495bc8901', '#include<bits/stdc++.h>
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
', '[{"returnCode":3,"times":930}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (70, 77, '05964658-0d7a-4e22-accf-bea8013f4485', '#include<bits/stdc++.h>
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
', '[{"returnCode":3,"times":650}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (71, 77, '5158a468-0969-4780-a2c3-7132d54fe78c', '#include<bits/stdc++.h>
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
', '[{"returnCode":2,"times":530},{"returnCode":4,"times":1010}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (72, 77, '51a5aa36-608a-45d9-b224-1386e306c0bb', '#include<bits/stdc++.h>
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
', '[{"returnCode":2,"times":500},{"returnCode":4,"times":1010}]');
INSERT INTO polinoj.submit (id, problem_id, source_submit_id, code, user_id, status, exec_time, exec_memory, cc_info, run_info) VALUES (73, 77, '7bf34efd-dc18-4d6c-a841-fabf43fa3ea4', '#include<bits/stdc++.h>
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
', '[{"returnCode":2,"times":310},{"returnCode":2,"times":480},{"returnCode":2,"times":330},{"returnCode":2,"times":240},{"returnCode":2,"times":120},{"returnCode":2,"times":380},{"returnCode":2,"times":370},{"returnCode":2,"times":160},{"returnCode":2,"times":120},{"returnCode":2,"times":450},{"returnCode":2,"times":460},{"returnCode":2,"times":240},{"returnCode":2,"times":280},{"returnCode":2,"times":250},{"returnCode":2,"times":440},{"returnCode":2,"times":490},{"returnCode":2,"times":240},{"returnCode":2,"times":530},{"returnCode":2,"times":480},{"returnCode":2,"times":150}]');