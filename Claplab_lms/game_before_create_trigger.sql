DROP TRIGGER if exists game_before_create;
CREATE TRIGGER game_before_create
    BEFORE
INSERT 
	ON
	games
    FOR EACH ROW
BEGIN
    declare campaign_id int;
    declare branch_id int;
    declare area_id int;

    select c.branch_id
    from classes c
    where new.class_id = c.id
    into branch_id;

    select b.area_id
    from branches b
    where b.id = branch_id
    into area_id;

    select a.campaign_id
    from areas a
    where a.id = area_id
    into campaign_id;

    SET NEW.branch_id = branch_id;
    SET NEW.area_id = area_id;
    SET NEW.campaign_id = campaign_id;
END;
