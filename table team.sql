create table team(
teamid int primary key,
teamName varchar(20),
player_nos int
);

create table player(
playerid int primary key,
playerName varchar(20),
speciality enum('blower','batsman','allrounder','wicketkeeper'),
date_of_joining date,
num_matches int,
tid int,
constraint tm_id foreign key(tid) references team(teamid)
on delete set NULL
on update cascade
);

create table matches(
matchid int primary key,
team1id int ,
team2id int ,
match_date date,
winner int,
man_of_match int,

constraint ft1_id foreign key(team1id) references team(teamid)
on delete set NULL
on update cascade,
constraint ft2_id foreign key(team2id) references team(teamid)
on delete set NULL
on update cascade,


constraint fk_man_match foreign key(man_of_match) references player(playerid)
);

insert into team values(11,"MI",11);
insert into team values(22,"CSK",10);
insert into team values(33,"RCB",11);
1
insert into player values (1,"Rohit","batsman",'2007-02-08',256,11);

insert into player values (2,"Dhoni","Wicketkeeper",'2007-02-16',256,22);

insert into player values(3,"Surya","batsman",'2010-12-25',160,11);

insert into player values(4,"jadeja","allrounder",'2017-10-08',165,22);

insert into player values (5,"Bumrah","blower",'2009-03-23',105,11),(6,"virat","batsman",'1995-03-27',309,33);


insert into matches values(101,11,22,'2008-03-05',11,1),(202,11,22,'2009-03-18',22,2);

insert into matches values (303,33,11,'2008-01-01',11,1);