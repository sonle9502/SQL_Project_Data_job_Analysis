SELECT 
    count(*) AS total_job,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS job_category
FROM
    job_postings_fact

WHERE job_title_short = 'Data Analyst'

GROUP BY job_category