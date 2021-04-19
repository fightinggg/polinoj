create table context
(
    id         bigint auto_increment comment '主键'
        primary key,
    name       varchar(64) not null comment '比赛名字',
    begin_time bigint      not null,
    end_time   bigint      not null,
    owner_id   bigint      null
);

INSERT INTO polinoj.context (id, name, begin_time, end_time, owner_id) VALUES (1, 'context1', 0, 0, 2);
INSERT INTO polinoj.context (id, name, begin_time, end_time, owner_id) VALUES (2, 'context2', 0, 0, 2);