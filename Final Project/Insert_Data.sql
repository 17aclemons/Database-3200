
#Inserting Data
insert TEAMS values (1, 'LA Galaxy', 0,0);
Insert TEAMS values (2, 'Los Angeles FC', 0, 0);
Insert TEAMS values (3, 'Seattle Sounder FC', 0,0);
Insert TEAMS values (4, 'Atlanta United FC', 0,0);
Insert TEAMS values (5, 'Chicago Fire SC', 0,0);

Insert PLAYERS values (1,'David', 'Bingham', 24, 1);
Insert PLAYERS values (2, 'Tyler', 'Miller', 26, 2);
Insert PLAYERS values (3, 'Trey', 'Muse', 21, 3);
Insert PLAYERS values (4,'Bradley', 'Guzan', 25, 1);
Insert PLAYERS values (5,'Brandt', 'Bronico', 29, 1);

insert COACHES values (1, 'Guillermo Barros Schelotto', 46, 1);
Insert COACHES values (2, 'Bob Bradley', 61, 2);
Insert COACHES values (3, 'Sigi Schmid', 65, 3);
Insert COACHES values (4, 'Frank de Boer', 49, 4);
Insert COACHES values (5, 'Veljko Paunović', 42, 5);

Insert FIELDS values (1, 'Red Bull Arena', '600 Cape May St', 'Harrison','NJ', 07029, 25000);
Insert FIELDS values (2, 'Avaya Stadium', '1123 Coleman Ave', 'San Jose', 'CA', 95110, 18000);
Insert FIELDS values (3, 'CentruyLink Field', '800 Occidental Ave S', 'Seattle', 'WA', 98134, 72000); 

Insert CURRENT_COACHES values (1,1);
Insert CURRENT_COACHES values (2,2);
Insert CURRENT_COACHES values (3,3);
insert CURRENT_COACHES values (4,4);
insert CURRENT_COACHES values (5,5);

Insert CURRENT_TEAM_MEMBERS values (1,1);
Insert CURRENT_TEAM_MEMBERS values (2,2);
Insert CURRENT_TEAM_MEMBERS values (3,3);
Insert CURRENT_TEAM_MEMBERS values (4,4);
Insert CURRENT_TEAM_MEMBERS values (5,5);

Insert PREVIOUS_TEAMS_COACHED values (1, 2);
Insert PREVIOUS_TEAMS_COACHED values (2, 3);
Insert PREVIOUS_TEAMS_COACHED values (3, 4);
Insert PREVIOUS_TEAMS_COACHED values (4, 5);
Insert PREVIOUS_TEAMS_COACHED values (5, 1);

#stopped here

Insert MATCHES values (1, '2001-01-01', 'Played', 1);
insert MATCHES values (2, '2002-02-02', 'Played', 2); 
Insert MATCHES values (3, '2020-02-20', 'Future', 3); 
Insert MATCHES values (4, '2003-03-03', 'Played', 1); 
Insert MATCHES values (5, '2020-03-03', 'Future', 2);
Insert MATCHES values (6, '2020-04-04', 'Future', 3); 

Insert FUTURE_MATCH values (3, '3:00pm');
Insert FUTURE_MATCH values (2, '4:00pm');

Insert PLAYED_MATCH values (1, 1, '1-0' );
Insert PLAYED_MATCH values (2, 3, '5-0');
Insert PLAYED_MATCH values (4, 2, '2-0' );

Insert PREVIOUS_TEAMS values (1, 1);
Insert PREVIOUS_TEAMS values (2, 2);
Insert PREVIOUS_TEAMS values (3, 3);

Insert MATCH_HISTORY values (1, 1);
Insert MATCH_HISTORY values (2, 1);
Insert MATCH_HISTORY values (3, 2);

Insert TEAMS_PLAYING values(1, 1, 3);
Insert TEAMS_PLAYING values(2, 1, 3);
Insert TEAMS_PLAYING values(3, 2, 3);

Insert MATCHES_PLAYED values (1,1);
Insert MATCHES_PLAYED values (1,2);
Insert MATCHES_PLAYED values (2, 3);
