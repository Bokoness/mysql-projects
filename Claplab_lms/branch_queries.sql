# select all branch classes
SELECT c.name, c.branch_id, b.created_at, b.updated_at
FROM branches as b
    join classes c on b.id = c.branch_id
WHERE b.id = 1;

# select all campaign games
SELECT g.name, g.class_id, b.created_at, b.updated_at
FROM branches as b
    join classes c on b.id = c.branch_id
    join games g on c.id = g.class_id
WHERE b.id = 1;