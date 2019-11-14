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
create table Teams(
TeamID int primary key, 
TeamName varchar(255), 
MatchesWon int, 
MatchesLost int);

create table CurrentTeamMembers(
TeamID int,
PlayerID int, 
primary key (TeamID, PlayerID), 
constraint fk_teamid foreign key (TeamID)
references Teams(TeamID),
constraint fk_playerid foreign key (PlayerID)
references Player(PlayerID)); 

create table CurrentCoaches(
TeamID int,
CoachID int,
primary key (TeamID, CoachID),
constraint fk_ccTeamID foreign key (TeamID)
references Teams(TeamID),
constraint fk_ccCoachID foreign key (CoachID)
references Coaches(CoachID)
);

create table PreviousTeamsCoached(
CoachID int, 
TeamID int,
primary key (CoachID, TeamID),
constraint fk_ptcCoachID foreign key (CoachID)
references Coaches(CoachID),
constraint fk_ptcTeamID foreign key (TeamID)
references Teams(TeamID)
);

