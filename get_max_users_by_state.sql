SELECT name,state,city,MAX(users) 
FROM
    users
group by state;
