/* Create Tables from Other Tables

? Question:

* Create three tables:

    * Jan 2023 jobs
    * Feb 2023 Jobs
    * Mar 2023 JobS

* Foreshadowing: This will be used in another problem below

* Hints:
    * CREATE TABLE table_name AS syntax to create your table
    * Look at a way  to filter out only specific months (EXTRACT)
*/


-- Extracting especific month on table

SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) =  1
LIMIT 10;

-- Create a Table 


CREATE TABLE january_jobs AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

CREATE TABLE february_jobs AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE march_jobs AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

SELECT * FROM february_jobs