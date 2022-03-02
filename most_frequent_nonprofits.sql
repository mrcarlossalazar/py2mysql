select *, COUNT(state) AS MOST_FREQUENT
from users
WHERE 501C3Status = "Approved"
GROUP BY state
ORDER BY COUNT(state) DESC
