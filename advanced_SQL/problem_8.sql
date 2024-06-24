SELECT 
    quater1_job_postings.job_title_short,
    quater1_job_postings.job_location,
    quater1_job_postings.job_via,
    quater1_job_postings.job_posted_date::date,
    quater1_job_postings.salary_year_avg
FROM    (
    SELECT*
    FROM january_jobs
    UNION
    SELECT*
    FROM february_jobs
    UNION
    SELECT*
    FROM march_jobs
) as quater1_job_postings
WHERE
    quater1_job_postings.salary_year_avg > 70000 AND
    quater1_job_postings.job_title_short = 'Data Scientist'
ORDER BY
    quater1_job_postings.salary_year_avg DESC
 
 