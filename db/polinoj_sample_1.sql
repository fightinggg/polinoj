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
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (17, 29, '<pre><div style="font-family:Courier New,Courier,monospace;">2
1 2
112233445566778899 998877665544332211</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">Case 1:
1 + 2 = 3

Case 2:
112233445566778899 + 998877665544332211 = 1111111111111111110</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (18, 30, '<pre><div style="font-family:Courier New,Courier,monospace;">1
100</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">1

5050</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (19, 31, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (20, 32, '<pre><div style="font-family:Courier New,Courier,monospace;">1
100</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">1

5050</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (21, 33, '<pre><div style="font-family:Courier New,Courier,monospace;">2
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
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (22, 34, '<pre><div style="font-family:Courier New,Courier,monospace;">5
green
red
blue
red
red
3
pink
orange
pink
0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">red
pink</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (23, 35, '<pre><div style="font-family:Courier New,Courier,monospace;">2
5 6 -1 5 4 -7
7 0 6 -1 1 -6 7 -5</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">Case 1:
14 1 4

Case 2:
7 1 6</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (24, 36, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1 3
1 2 10
0 0 0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2
5</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (25, 37, '<pre><div style="font-family:Courier New,Courier,monospace;">5
green
red
blue
red
red
3
pink
orange
pink
0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">red
pink</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (26, 38, '<pre><div style="font-family:Courier New,Courier,monospace;">2
5 6 -1 5 4 -7
7 0 6 -1 1 -6 7 -5</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">Case 1:
14 1 4

Case 2:
7 1 6</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (27, 39, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1 3
1 2 10
0 0 0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2
5</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (28, 40, '<pre><div style="font-family:Courier New,Courier,monospace;">2
5 6 -1 5 4 -7
7 0 6 -1 1 -6 7 -5</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">Case 1:
14 1 4

Case 2:
7 1 6</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (29, 42, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1 3
1 2 10
0 0 0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2
5</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (30, 41, '<pre><div style="font-family:Courier New,Courier,monospace;">5
green
red
blue
red
red
3
pink
orange
pink
0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">red
pink</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (31, 43, '<pre><div style="font-family:Courier New,Courier,monospace;">2
5 6 -1 5 4 -7
7 0 6 -1 1 -6 7 -5</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">Case 1:
14 1 4

Case 2:
7 1 6</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (32, 44, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1 3
1 2 10
0 0 0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2
5</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (33, 45, '<pre><div style="font-family:Courier New,Courier,monospace;">5
green
red
blue
red
red
3
pink
orange
pink
0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">red
pink</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (34, 46, '<pre><div style="font-family:Courier New,Courier,monospace;">2
5 6 -1 5 4 -7
7 0 6 -1 1 -6 7 -5</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">Case 1:
14 1 4

Case 2:
7 1 6</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (35, 47, '<pre><div style="font-family:Courier New,Courier,monospace;">2
5 6 -1 5 4 -7
7 0 6 -1 1 -6 7 -5</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">Case 1:
14 1 4

Case 2:
7 1 6</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (36, 48, '<pre><div style="font-family:Courier New,Courier,monospace;">5
green
red
blue
red
red
3
pink
orange
pink
0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">red
pink</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (37, 49, '<pre><div style="font-family:Courier New,Courier,monospace;">2
5 6 -1 5 4 -7
7 0 6 -1 1 -6 7 -5</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">Case 1:
14 1 4

Case 2:
7 1 6</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (38, 50, '<pre><div style="font-family:Courier New,Courier,monospace;">1 1 3
1 2 10
0 0 0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">2
5</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (39, 68, '<pre><div style="font-family:Courier New,Courier,monospace;">1 2
3 2 3 1
0</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">17
41</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (40, 74, '123', '123');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (41, 75, '1 1', '2');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (42, 76, '<pre><div style="font-family:Courier New,Courier,monospace;">2
3 5 7 15
6 4 10296 936 1287 792 1</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">105
10296</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (43, 77, '1', '1');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (44, 77, '10', '55');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (45, 77, '100000000', '6875');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (46, 78, '1', '1');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (47, 78, '2', '2');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (48, 78, '3', '3');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (49, 79, '1', '1');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (50, 79, '2', '2');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (51, 79, '3', '3');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (52, 80, '1', '1');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (53, 80, '2', '2');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (54, 80, '3', '3');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (55, 81, '1', '1');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (56, 81, '2', '2');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (57, 81, '3', '3');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (58, 79, '<pre><div style="font-family:Courier New,Courier,monospace;">2
3</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">1
1</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (59, 78, '<pre><div style="font-family:Courier New,Courier,monospace;">2
3 2 1 3
9 1 4 7 2 5 8 3 6 9</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">1 2 3
1 2 3 4 5 6 7 8 9</div></pre>');
INSERT INTO polinoj.sample (id, problem_id, input, output) VALUES (60, 80, '<pre><div style="font-family:Courier New,Courier,monospace;">1
2
3</div></pre>', '<pre><div style="font-family:Courier New,Courier,monospace;">1
2
6</div></pre>');