create database my_2;
use my_2;
create table players
(player_id int,
player_name varchar(20),
country varchar(20),
goals int);
select * from players;
insert into players values(1,'ranadlo','portugal',100);
insert into players values(2,'messi','argentia',90);
insert into players values(3,'sunil','india',80);
insert into players values(4,'nanda','srilanga',70);
insert into players values(5,'ravi','bandagalesh',60);
insert into players values(6,'raju','india',50);
delimiter &&
create procedure top_players1()
begin
select player_name,country,goals from players where goals >90;
end&&
delimiter ;
call top_players1();
DELIMITER && → Use && as the end marker.
END && → Procedure definition ends here.
DELIMITER ; → Change back to normal semicolon mode.
SHOW PROCEDURE STATUS;
DELIMITER &&
CREATE PROCEDURE TopPlayers()
BEGIN
    SELECT player_name, country, goals
    FROM players
    ORDER BY goals DESC;
END &&
DELIMITER ;
call TopPlayers();
DELIMITER &&
CREATE PROCEDURE TopPlayers1(IN min_goals INT)
BEGIN
    SELECT player_name, country, goals
    FROM players
    WHERE goals > min_goals
    ORDER BY goals DESC;
END &&
DELIMITER ;
call TopPlayers1(3);
 IN     Pass value into the procedure           
 OUT    Return value from the procedure        
 INOUT  Pass value in and return modified value 
update players set goals = 200 where player_name ='ronaldo';
SET SQL_SAFE_UPDATES = 0;
DELIMITER &&
CREATE PROCEDURE UpdateRonaldoGoals1()
BEGIN
    UPDATE players
    SET goals = 200
    WHERE player_name = 'Ronaldo';
END &&
DELIMITER ;
call UpdateRonaldoGoals1();
DELIMITER &&
CREATE PROCEDURE Goals12(
    IN p_name VARCHAR(50),
    IN p_goals INT
)
BEGIN
    UPDATE players
    SET goals = p_goals
    WHERE player_name = p_name;
END &&
DELIMITER ;
CALL Goals12('Ronaldo', 200);
SHOW PROCEDURE STATUS
WHERE Db = DATABASE();
total_count of player based on country;
DELIMITER //
CREATE PROCEDURE PlayerCountByCountry2(
    IN var VARCHAR(50),
    OUT total_player int
)
BEGIN
    SELECT COUNT(*)
    FROM players
    WHERE country = var into total_player;
END //
DELIMITER ;
CALL PlayerCountByCountry2('india',@total_count);
select @total_count;
