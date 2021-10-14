const { Pool } = require('pg');


const pool = new Pool({
  user:"labber",
  password:"labber",
  host:"localhost",
  database: "bootcampx"
});
args = process.argv.slice(2);

pool.query(`
SELECT  DISTINCT teachers.name AS teacher, cohorts.name as cohort 
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id  
JOIN students ON student_id = students.id 
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name ='${args[0]}'
ORDER BY teacher;
`)
.then(res => {
  // console.log(res.rows);
  res.rows.forEach(row => {
    console.log(`cohort: ${row.cohort}    teacher: ${row.teacher} `);
  })
})
.catch(err => {
  console.log(err);
});