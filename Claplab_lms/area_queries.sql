# select all areas branches
SELECT b.name, b.area_id, b.created_at, b.updated_at
FROM areas as a
    join branches b on a.id = b.area_id
WHERE a.id = 1;

# select all campaign classes
SELECT c.name, c.branch_id, b.created_at, b.updated_at
FROM areas as a
    join branches b on a.id = b.area_id
    join classes c on b.id = c.branch_id
WHERE a.id = 1;

# select all campaign games
SELECT g.name, g.class_id, b.created_at, b.updated_at
FROM areas as a
    join branches b on a.id = b.area_id
    join classes c on b.id = c.branch_id
    join games g on c.id = g.class_id
WHERE a.id = 1;