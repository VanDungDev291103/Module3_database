create database football_team_management;

use football_team_management;

create table player (
	id int primary key auto_increment,
    name nvarchar (50) not null,
    date_of_birth date not null,
    nationality varchar(100) null, -- quốc tich
    shirt_number int not null,
    id_team int not null,
    foreign key (id_team) references team (id)
);

create table playing_position (
	id int primary key auto_increment,
    playing_positon varchar(50) not null
);

create table player_position (
	id_player int not null,
    id_playing_position int not null,
    primary key (id_player, id_playing_position),
    foreign key (id_player) references player (id),
    foreign key (id_playing_position) references playing_position(id)
);

-- bảng huấn luyện viên
create table coach ( 
	id int primary key auto_increment,
    name nvarchar(50) not null,
    date_of_birth date not null,
    nationality varchar(100) null
);

create table team (
	id int primary key auto_increment,
    team_name nvarchar(100) not null,
    number_of_player int not null, -- số lượng cầu thủ
    id_coach int not null unique,
    foreign key (id_coach) references coach (id)
);

create table football_match (
	id int primary key auto_increment,
    team_1 int not null,
    team_2 int not null,
    match_time time not null,
    match_day date not null
);

create table player_football_match (
	id_player int not null,
    id_football_match int not null,
    primary key (id_player,id_football_match),
    foreign key (id_player) references player (id),
    foreign key (id_football_match) references football_match (id)
);




