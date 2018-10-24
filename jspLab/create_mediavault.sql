create schema mediavault;
use mediavault;

create table userinfo(
	id varchar(45) not null,
    uname varchar(45) not null,
    phone_num varchar(45) not null,
    email varchar(45) not null,
    gender varchar(45) not null,
    user_password varchar(45) not null,
    primary key(id)
);

create table tvshow(
	tid varchar(45) not null,
    rating float,
    plot varchar(60) not null,
    runtime int not null,
    mpaa varchar(45) not null,
    premiered varchar(45) not null,
    studio varchar(45) not null,
    actor varchar(45) not null,
    actorthumb varchar(45) not null,
    tittle varchar(45)not null,
    genre varchar(45) not null,
    thumb varchar(45)not null,
    primary key(tid)
);

create table episode(
	eid varchar(45)not null,
    rating float not null,
    season int not null,
    episode_num int not null,
    episode_plot varchar(45)not null,
    duration int not null,
    tittle varchar(45)not null,
    genre varchar(45)not null,
    thumb varchar(45)not null,
    tid varchar(45)not null,
    primary key(eid),
    foreign key(tid) references tvshow(tid)
);

create table album(
	aid varchar(45)not null,
    releasedate varchar(45),
    label varchar(45)not null,
    tittle varchar(45)not null,
    genre varchar(45)not null,
    thumb varchar(45)not null,
    unique (aid)
);

create table picture(
	pid varchar(45)not null,
    tittle varchar(45)not null,
    genre varchar(45)not null,
    thumb varchar(45)not null,
    aid varchar(45)not null,
    unique(pid),
    foreign key (aid) references album(aid)
);

create table movie(
	mmid varchar(45)not null,
    tittle varchar(45)not null,
    genre varchar(45)not null,
    thumb varchar(45)not null,
    rating float,
    duration int not null,
    resource varchar(45) not null,
    unique(mmid)
);

create table audio(
	auid varchar(45) not null,
    tittle varchar(45)not null,
    genre varchar(45) not null,
    thumb varchar(45)not  null,
    duration int not null,
    resource varchar(45),
    unique(auid)
);

insert into tvshow (tid, rating, plot, runtime, mpaa, premiered, studio, actor, actorthumb, tittle, genre, thumb) values ('t1',5.6,'The love between an actress and a doctor',45,'TV-14','2013-7-9','SBS',' Kim Soo-hyun','media/1.1.jpg','You from the star','romatic','media/1.jpg');
insert into tvshow (tid, rating, plot, runtime, mpaa, premiered, studio, actor, actorthumb, tittle, genre, thumb) values ('t2',8.0,'The stories among a group of good friends',45,'TV-14','1994-9-22','NBC',' David','media/2.1.jpg','Friends','comedy','media/2.jpg');
insert into tvshow (tid, rating, plot, runtime, mpaa, premiered, studio, actor, actorthumb, tittle, genre, thumb) values ('t3',7.0,'The love story between a disabled woman and a man',45,'TV-14','2005-1-5','MBC',' Kwone Sang Woo','media/3.1.jpg','The sad love story','romatic','media/3.jpg');

insert into episode (eid, rating, season, episode_num, episode_plot, duration, tittle, genre, thumb, tid) values ('e1',5.6,1,1,'The most moving episode of the love story',45,'you from the star','romantic','media/1.1.flv','t1');
insert into episode (eid, rating, season, episode_num, episode_plot, duration, tittle, genre, thumb, tid) values ('e2',5.6,1,2,'The man left and the woman was very sad',41,'you from the star','romantic','media/2.flv','t1');
insert into episode (eid, rating, season, episode_num, episode_plot, duration, tittle, genre, thumb, tid) values ('e3',8.0,1,1,'Recheal divoced',44,'Friedns','comedy','media/2.1.flv','t2');
insert into episode (eid, rating, season, episode_num, episode_plot, duration, tittle, genre, thumb, tid) values ('e4',8.0,2,2,'Rossi and Recheal got together ',42,'Friends','comedy','media/2.2.flv','t2');
insert into episode (eid, rating, season, episode_num, episode_plot, duration, tittle, genre, thumb, tid) values ('e5',8.0,3,3,'The whole six people plan a good schedual',39,'Friends','comedy','media/3.flv','t2');
insert into episode (eid, rating, season, episode_num, episode_plot, duration, tittle, genre, thumb, tid) values ('e6',7.0,1,1,'The man promised woman they will be together',42,'the sad love story','romantic','media/3.1.flv','t3');
insert into episode (eid, rating, season, episode_num, episode_plot, duration, tittle, genre, thumb, tid) values ('e7',7.0,1,2,'The woman wanted to leave the man',41,'the sad love story','romantic','media/3.2.flv','t3');
insert into episode (eid, rating, season, episode_num, episode_plot, duration, tittle, genre, thumb, tid) values ('e8',7.0,1,3,' the most moving episode of the love story',43,'the sad love story','romantic','media/4.flv','t3');

insert into album (aid, releasedate, label, tittle, genre, thumb) values ('a1','2017-3-4',' published','models','character','media/20.jpeg');
insert into album (aid, releasedate, label, tittle, genre, thumb) values ('a2','2015-4-8',' published',' places of interest','landscape','media/21.jpg');

insert into picture (pid, tittle, genre, thumb, aid) values ('p1','Miranda Kerr','character','media/13.jpg','a1');
insert into picture (pid, tittle, genre, thumb, aid) values ('p2','Audrey Hepburn','character','media/12.jpg','a1');
insert into picture (pid, tittle, genre, thumb, aid) values ('p3','Heidelberg','landscape','media/11.jpg','a2');
insert into picture (pid, tittle, genre, thumb, aid) values ('p4','slender west lake','landscape','media/10.jpg','a2');

insert into movie (mmid, tittle, genre, thumb, rating, duration, resource) values ('m1','Roman Holiday','romantic comedy','media/4.jpg',8.8,118,'media/1.flv');
insert into movie (mmid, tittle, genre, thumb, rating, duration, resource) values ('m2','zootopia','animated-comedy','media/5.jpg',7.9,104,'media/5.flv');

insert into audio (auid, tittle, genre, thumb,duration, resource) values ('au1','my heart will go on','popular music','media/6.jpg',4,'media/1.mp3');
insert into audio (auid, tittle, genre, thumb,duration, resource) values ('au2','Love Story','country music','media/7.jpg',3,'media/2.mp3');
insert into audio (auid, tittle, genre, thumb,duration, resource) values ('au3','1812 Overture','classical music','media/8.jpg',5,'media/3.mp3');
insert into audio (auid, tittle, genre, thumb,duration, resource) values ('au4','Eine Kleine Nachtmusik: Allegro','classical music','media/9.jpg',4,'media/4.mp3');
