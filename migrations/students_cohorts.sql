CREATE TABLE students 
(id SERIAL PRIMARY KEY NOT NULL, 
name VARCHAR(50) NOT NULL,
email VARCHAR(50),
phone VARCHAR(32),
github VARCHAR(255),
start_date DATE,
end_date DATE,
cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
 
);

create table cohorts
(id SERIAL PRIMARY KEY,
name VARCHAR(50),
start_date DATE,
end_date DATE
);