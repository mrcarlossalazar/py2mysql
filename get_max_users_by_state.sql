SELECT MAX(n.state)
FROM
    users n
INNER JOIN users_list o ON o.org = n.name
ORDER BY n.state DESC

