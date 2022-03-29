# select all class games
SELECT g.name, g.class_id, g.created_at, g.updated_at
FROM classes as c
    join games g on c.id = g.class_id
WHERE c.id = 1;