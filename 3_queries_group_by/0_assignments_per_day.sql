SELECT DAY, count(assignments)
FROM assignments 
GROUP BY day
ORDER BY day;