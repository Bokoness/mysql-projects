DROP TRIGGER if exists before_branch_create;
CREATE TRIGGER before_branch_create
    BEFORE INSERT
    ON branches
    FOR EACH ROW
BEGIN
    declare campaign_id int;

    select a.campaign_id
    from areas a
    where a.id = new.area_id
    into campaign_id;

    SET NEW.campaign_id = campaign_id;
END;
