#Jaegars Code
#Players Table
create table PLAYERS (PlayerID int(255) primary key, FirstName varchar(255), 
LastName varchar(255), Age int(255), CurrentTeam varchar(255));
alter table PLAYERS add constraint ct_fk foreign key PLAYERS (CurrentTeam) references TEAMS (TeamID);

/*
Matches Played (Player ID, Match ID)
Previous Teams (Player ID, Team ID)
Match History ( Match ID, Team ID, score)
*/
create table PREVIOUS_TEAMS (PlayerID int(255), TeamID int(255));
alter table PREVIOUS_TEAMS add constraint pt_pk primary key (PlayerID, TeamID);
alter table PREVIOUS_TEAMS add constraint pt_fk1 foreign key PREVIOUS_TEAMS (PlayerID) references PLAYERS (PlayerID);
alter table PREVIOUS_TEAMS add constraint pt_fk2 foreign key PREVIOUS_TEAMS (TeamID) references TEAMS (TeamID);

create table MATCHES_PLAYED (PlayerID int(255), MatchID int(255));
alter table MATCHES_PLAYED add constraint mp_pk primary key (PlayerID, MatchID);
alter table MATCHES_PLAYED add constraint mp_fk1 foreign key MATHCES_PLAYED (PlayerID) references PLAYERS (PlayerID);
alter table MATCHES_PLAYED add constraint mp_fk2 foreign key MATCHES_PLAYED (MatchID) references MATCHES (MatchID);

create table MATCH_HISTORY (MatchID int(255), TeamID int(255));
alter table MATCH_HISTORY add constraint mh_pk primary key (MatchID, TeamID);
alter table MATCH_HISTORY add constraint mh_fk1 foreign key MATCH_HISTORY (MatchID) references MATCHES (MatchID);
alter table MATCH_HISTORY add constraint mh_fk2 foreign key MATCH_HISTORY (TeamID) references TEAMS (TeamID);

#Andrew's Code
create table TEAMS(
TeamID int primary key, 
TeamName varchar(255), 
MatchesWon int, 
MatchesLost int);

create table CURRENT_TEAM_MEMBERS(
TeamID int,
PlayerID int,
primary key (TeamID, PlayerID), 
constraint fk_teamid foreign key (TeamID)
references Teams(TeamID),
constraint fk_playerid foreign key (PlayerID)
references PLAYER(PlayerID)); 

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
references Coaches(CoachID),
constraint fk_ptcTeamID foreign key (TeamID)
references TEAMS(TeamID)
);

#Fields
create table FIELDS (FieldID int primary key, FieldName varchar(255), 
Street varchar(255), City varchar(255), State varchar(255), Zip int, StadiumCap int);

#Matches
create table MATCHES (MatchID int, WinningTeam varchar(4), Score int, Field varchar(255), TimePlayed varchar(255), GameDate Date, MatchCompleted varchar(3), FieldID int primary key);

#Teams Playing
create table TEAMS_PLAYING (MatchID int(255), TeamID int(255));
alter table TEAMS_PLAYING add constraint mp_pk primary key (MatchID, TeamID);
alter table TEAMS_PLAYING add constraint mp_fk1 foreign key TEAMS_PLAYING (MatchID) references MATCHES (MatchID);
alter table TEAMS_PLAYING add constraint mp_fk2 foreign key TEAMS_PLAYING (TeamID) references TEAMS (TeamID);

#Coaches
create table COACHES (CoachID int primary key , Name varchar(4), age int, CurrentTeam varchar(255), TeamID int primary key);
