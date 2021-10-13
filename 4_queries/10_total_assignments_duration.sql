SELECT day, count(*) AS assignment, sum(duration) AS duration
FROM assignments 
GROUP BY day
ORDER BY day;