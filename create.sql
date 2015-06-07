create table user
(
    handle    char(30)  not null primary key
    rank      char(30)  not null
    rating    int       not null
    maxrank   char(30)  not null
    maxrating int       not null
    modified  timestamp not null default current_timestamp on update current_timestamp
);

create table rating
(
    id     int       not null auto_increment primary key
    user   char(30)  not null
    time   timestamp not null
    rating int       not null
    modified  timestamp not null default current_timestamp on update current_timestamp
);

create table contest
(
    id   int       not null primary key
    type char(10)  not null
    url  char(100) null
    modified  timestamp not null default current_timestamp on update current_timestamp
);

create table problem
(
    id          int       not null auto_increment primary key
    contestid   int       not null
    index       char(10)  not null
    name        char(100) not null
    type        char (30) not null
    points      double    null
    tags        char(255) not null
    solvedcount int       null
    modified  timestamp not null default current_timestamp on update current_timestamp
);

create table submission
(
    id           int      not null primary key
    contestid    int      not null
    time         datetime not null
    relativetime int      not null
    problemid    int      not null
    user         char(30) not null
    proglang     char(30) not null
    verdict      char(30) not null
    testset      char(30) not null
    passed       int      not null
    timeconsume  int      not null
    memconsume   int      not null
    modified  timestamp not null default current_timestamp on update current_timestamp
);
