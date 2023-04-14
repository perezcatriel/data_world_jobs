-- Crear la DataBase
CREATE database IF NOT EXISTS JOB;

-- Elegir la DataBases a usar
USE JOB;

-- Crear la tabla
CREATE TABLE IF NOT EXISTS Jobs (
    job_id INT PRIMARY KEY AUTO_INCREMENT,
    job_title VARCHAR(255),
    level VARCHAR(255),
    job_type VARCHAR(255),
    salary_avg VARCHAR(255),
    benefits VARCHAR(255),
    onsite_remote VARCHAR(255),
    dim_JobCategory VARCHAR(255),
    dim_company VARCHAR(255),
    dim_Location INT,
    dim_Skills INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


-- Cargar el csv
LOAD DATA INFILE '../notebook/data/job.csv'
INTO TABLE Jobs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;