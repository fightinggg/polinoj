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

INSERT INTO polinoj.user (id, username, password, slat, email, telephone) VALUES (1, 'admin', '999990e6000a0790f8a6f1dbc684b5f2bca3120131e4b3c94629390b9ed7cae6', '829a69f7b86437ff2d9f08cc863e9e90acfba640a648bb5119379a9646997e02', '222@qq.com', '110');
INSERT INTO polinoj.user (id, username, password, slat, email, telephone) VALUES (2, 'fightinggg', 'ba41f42146e6f966875028aa460e470a5a7df798a6d5cd9c2f23b74626a7ea48', 'f1739548245c7739d9f7764ce451ed6b29ed2cd5a06897f93319077f7452c890', '222@qq.com', '110');
INSERT INTO polinoj.user (id, username, password, slat, email, telephone) VALUES (3, 'syg', 'acf272827d3640cefeafc0b70d93ac06b696bca0225fc8f099a6ee0f4e2e22f8', '7a208e16f5bfc4c5fa31d6810b1ec1a557db4bf6ac75bed90ef11e5015b49434', null, null);
INSERT INTO polinoj.user (id, username, password, slat, email, telephone) VALUES (4, 'wsx', 'bc19f2a42f33457a16595008be64e85fbf40abf1a21f654ee65ebe1b72de0ff2', '4d1b2e11c53e02acff7fdeccf9a8e01ce36e478e5217d88f2b066ae65b73b77a', null, null);