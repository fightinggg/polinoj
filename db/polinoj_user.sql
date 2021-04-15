create table user
(
    id        bigint auto_increment
        primary key,
    username  varchar(256) null,
    password  varchar(64)  null,
    slat      varchar(64)  null,
    email     varchar(256) null,
    telephone varchar(64)  null,
    constraint user_username_uindex
        unique (username)
);

INSERT INTO polinoj.user (id, username, password, slat, email, telephone) VALUES (1, 'admin', '999990e6000a0790f8a6f1dbc684b5f2bca3120131e4b3c94629390b9ed7cae6', '829a69f7b86437ff2d9f08cc863e9e90acfba640a648bb5119379a9646997e02', '246553278@qq.com', '18086698682');
INSERT INTO polinoj.user (id, username, password, slat, email, telephone) VALUES (2, 'fightinggg', 'ba41f42146e6f966875028aa460e470a5a7df798a6d5cd9c2f23b74626a7ea48', 'f1739548245c7739d9f7764ce451ed6b29ed2cd5a06897f93319077f7452c890', '246553278@qq.com', '18086698682');