-- sacar los usuarios sin parent_id null
-- sacar los usuarios con parent_id 

SELECT concat(first_name," ", last_name) AS Fullname, "Padre" Estado, parent_id
FROM customer
WHERE parent_id IS NULL

UNION

SELECT concat(first_name," ", last_name) AS Fullname, "Hijo" Estado,parent_id
FROM customer
WHERE parent_id IS NOT NULL
