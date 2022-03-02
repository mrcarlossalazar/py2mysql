SELECT AVG(count)
from(
SELECT n.name,n.state,n.city, COUNT(*) AS count
FROM
    users n
LEFT JOIN users_list o ON o.org = n.name
GROUP BY n.name
) as counts

