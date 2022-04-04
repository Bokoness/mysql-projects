DROP TRIGGER if exists before_class_create;
CREATE TRIGGER before_class_create
    BEFORE INSERT
    ON classes
    FOR EACH ROW
BEGIN
    declare campaign_id int;
    declare area_id int;

    select b.area_id
    from branches b
    where b.id = new.branch_id
    into area_id;

    select a.campaign_id
    from areas a
    where a.id = area_id
    into campaign_id;

    SET NEW.area_id = area_id;
    SET NEW.campaign_id = campaign_id;
END;
