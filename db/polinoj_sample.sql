create table sample
(
    id         bigint auto_increment
        primary key,
    problem_id bigint null,
    input      text   null,
    output     text   null
);

INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (1, 4, '1 2', '3');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (2, 14, '<pre><div style="font-family:Courier New,Courier,monospace;">4 4 5
S.X.
..X.
..XD
....
3 4 5
S.X.
..X.
...D
0 0 0
 </div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">NO
YES
 </div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (3, 15, '<pre><div style="font-family:Courier New,Courier,monospace;">5 10
50 10
40 10
40 20
65 30
70 30
1 2
1 3
2 4
2 5
1 1
20 7
-1 -1
 </div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">50
7
 </div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (4, 16, null, '<pre><div style="font-family:Courier New,Courier,monospace;">n e
- -----------
0 1
1 2
2 2.5
3 2.666666667
4 2.708333333</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (5, 17, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (6, 18, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (7, 19, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (8, 20, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (9, 21, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (10, 22, '<pre><div style="font-family:Courier New,Courier,monospace;">1
100</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">1

5050</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (11, 23, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1 3
1 2 10
0 0 0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2
5</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (12, 24, '<pre><div style="font-family:Courier New,Courier,monospace;">5 3
7 2
4 3
5 2
20 3
25 18
24 15
15 10
-1 -1</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">13.333
31.500</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (13, 25, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1 3
1 2 10
0 0 0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2
5</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (14, 26, '<pre><div style="font-family:Courier New,Courier,monospace;">2
0 0
1 1
2
1 1
1 1
3
-1.5 0
0 0
0 1.5
0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">0.71
0.00
0.75</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (15, 27, '<pre><div style="font-family:Courier New,Courier,monospace;">4
.X..
....
XX..
....
2
XX
.X
3
.X.
X.X
.X.
3
...
.XX
.XX
4
....
....
....
....
0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">5
1
5
2
4</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (16, 28, '<pre><div style="font-family:Courier New,Courier,monospace;">0
120
90
-1</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">100.000
0.000
6.251</div></pre>');