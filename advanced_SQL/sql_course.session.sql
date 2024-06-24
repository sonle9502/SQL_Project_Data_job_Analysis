select
    company_id,
    COUNT(*) AS total_job
FROM job_postings_fact
GROUP BY company_id

 SELECT 
        company_id,
        COUNT(*) AS total_job

    FROM job_postings_fact

    GROUP BY company_id