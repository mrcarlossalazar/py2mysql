SELECT n.name,n.state,n.city,o.email,o.name,o.role, COUNT(o.org) AS MOST_FREQUENT
FROM
    users n
LEFT JOIN users_list o ON o.org = n.name
GROUP BY n.state
ORDER BY COUNT(n.state) DESC
