//subQurery
WITH january_jobs AS (
    SELECT * 
    FROM job_postings_fact
    WHERE EXTRACT(MONTH from job_posted_date) = 1
)

SELECT *
from january_jobs