-- write your queries here
SELECT * FROM owners o LEFT JOIN vehicles v ON o.id = v.owner_id;

SELECT o.first_name,o.last_name,COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.id ORDER BY COUNT(owner_id),o.first_name;

SELECT o.first_name,o.last_name,ROUND(AVG(price)) AS average_price, COUNT (owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.id  HAVING COUNT (owner_id)>1 AND AVG(price) > 10000 ORDER BY COUNT (owner_id) DESC;