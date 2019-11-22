#Teams

create table TEAMS(
TeamID int primary key, 
TeamName varchar(255), 
MatchesWon int, 
MatchesLost int);

#Players Table
create table PLAYERS (PlayerID int(255) primary key, FirstName varchar(255), 
LastName varchar(255), Age int(255), CurrentTeam int(255));
alter table PLAYERS add constraint ct_fk foreign key PLAYERS (CurrentTeam) references TEAMS (TeamID);

#Coaches
create table COACHES (CoachID int , Name varchar(255), age int, TeamID int);



alter table COACHES add constraint coach_pk primary key COACHES (CoachID, TeamID);

#Matches
create table MATCHES (MatchID int, GameDate Date , Match_Type Enum ('Future', 'Played'), FieldID int);
alter table MATCHES add constraint ma_pk primary key (MatchID, FieldID);

#Future Match
Create table FUTURE_MATCH (MatchID int(255), Time varchar (255));
Alter table FUTURE_MATCH add constraint fm_pk primary key(MatchID);
Alter table FUTURE_MATCH add constraint fm_fk foreign key FUTURE_MATCH (MatchID) references MATCHES (MatchID);

#Played Match
Create table PLAYED_MATCH (MatchID int primary key, WinningTeam int, score varchar(255));
Alter table PLAYED_MATCH add constraint mp1_fk foreign key PLAYED_MATCH (MatchID) references MATCHES (MatchID);
Alter table PLAYED_MATCH add constraint mp2_fk foreign key PLAYED_MATCH (WinningTeam) references TEAMS (TeamID);

#Fields
create table FIELDS (FieldID int primary key, FieldName varchar(255), 
Street varchar(255), City varchar(255), State varchar(255), Zip int, StadiumCap int);

create table PREVIOUS_TEAMS (PlayerID int(255), TeamID int(255));
alter table PREVIOUS_TEAMS add constraint pt_pk primary key (PlayerID, TeamID);
alter table PREVIOUS_TEAMS add constraint pt_fk1 foreign key PREVIOUS_TEAMS (PlayerID) references PLAYERS (PlayerID);
alter table PREVIOUS_TEAMS add constraint pt_fk2 foreign key PREVIOUS_TEAMS (TeamID) references TEAMS (TeamID);

create table MATCHES_PLAYED (PlayerID int(255), MatchID int(255));
alter table MATCHES_PLAYED add constraint mp_pk primary key (PlayerID, MatchID);
alter table MATCHES_PLAYED add constraint mp_fk1 foreign key MATHCES_PLAYED (PlayerID) references PLAYERS (PlayerID);



alter table MATCHES_PLAYED add constraint mp2_fk2 foreign key MATCHES_PLAYED (MatchID) references MATCHES (MatchID);

create table MATCH_HISTORY (MatchID int(255), TeamID int(255));
alter table MATCH_HISTORY add constraint mh_pk primary key (MatchID, TeamID);
alter table MATCH_HISTORY add constraint mh_fk1 foreign key MATCH_HISTORY (MatchID) references MATCHES (MatchID);
alter table MATCH_HISTORY add constraint mh_fk2 foreign key MATCH_HISTORY (TeamID) references TEAMS (TeamID);



create table CURRENT_TEAM_MEMBERS(
TeamID int,
PlayerID int, 
primary key (TeamID, PlayerID), 
constraint fk_teamid foreign key (TeamID)
references TEAMS(TeamID),
constraint fk_playerid foreign key (PlayerID)
references PLAYERS(PlayerID)); 

create table CURRENT_COACHES(
TeamID int,
CoachID int,
primary key (TeamID, CoachID),
constraint fk_ccTeamID foreign key (TeamID)
references Teams(TeamID),
constraint fk_ccCoachID foreign key (CoachID)
references COACHES(CoachID)
);

create table PREVIOUS_TEAMS_COACHED(
CoachID int, 
TeamID int,
primary key (CoachID, TeamID),
constraint fk_ptcCoachID foreign key (CoachID)
references COACHES(CoachID),
constraint fk_ptcTeamID foreign key (TeamID)
references TEAMS(TeamID)
);

#Teams Playing
create table TEAMS_PLAYING (MatchID int(255), HomeTeam int(255), AwayTeam int(255));
alter table TEAMS_PLAYING add constraint tp_pk primary key (MatchID);

alter table TEAMS_PLAYING add constraint tp_fk1 foreign key TEAMS_PLAYING (MatchID) references MATCHES (MatchID);
alter table TEAMS_PLAYING add constraint tp_fk2 foreign key TEAMS_PLAYING (HomeTeam) references TEAMS (TeamID);
alter table TEAMS_PLAYING add constraint tp_fk3 foreign key TEAMS_PLAYING (AwayTeam) references TEAMS (TeamID);









