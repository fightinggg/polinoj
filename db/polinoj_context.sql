create table context
(
    id          bigint auto_increment comment '主键'
        primary key,
    name        varchar(64)  not null comment '比赛名字',
    begin_time  bigint       not null,
    end_time    bigint       not null,
    owner_id    bigint       null,
    describtion varchar(256) null
);

INSERT INTO polinoj.context (id, name, begin_time, end_time, owner_id, describtion) VALUES (1, 'context1', 0, 0, 2, null);
INSERT INTO polinoj.context (id, name, begin_time, end_time, owner_id, describtion) VALUES (2, 'context2', 0, 0, 2, null);
INSERT INTO polinoj.context (id, name, begin_time, end_time, owner_id, describtion) VALUES (3, 'gh ', 1622134084000, 1653750093000, 4, null);