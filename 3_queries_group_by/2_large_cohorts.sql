SELECT cohorts.name, count(students)
FROM students
JOIN cohorts
ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students) >= 18
ORDER BY count(students);