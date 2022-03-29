# select all campaign areas
SELECT a.name, a.campaign_id, a.created_at, a.updated_at
FROM campaigns as campaign
    join areas a on campaign.id = a.campaign_id
WHERE campaign.id = 1;

# select all campaign branches
SELECT b.name, b.area_id, b.created_at, b.updated_at
FROM campaigns as campaign
    join areas a on campaign.id = a.campaign_id
    join branches b on a.id = b.area_id
WHERE campaign.id = 1;

# select all campaign classes
SELECT c.name, c.branch_id, c.created_at, c.updated_at
FROM campaigns as campaign
    join areas a on campaign.id = a.campaign_id
    join branches b on a.id = b.area_id
    join classes c on b.id = c.branch_id
WHERE campaign.id = 1;

# select all campaign games
SELECT g.name, g.class_id, g.content, g.created_at, g.updated_at
FROM campaigns as campaign
    join areas a on campaign.id = a.campaign_id
    join branches b on a.id = b.area_id
    join classes c on b.id = c.branch_id
    join games g on c.id = g.class_id
WHERE campaign.id = 1;