WITH company_job_count AS (
    SELECT 
        company_id,
        COUNT(*) AS total_job

    FROM job_postings_fact

    GROUP BY company_id
)

SELECT 
    name,
    total_job
FROM company_dim

LEFT JOIN company_job_count ON company_job_count.company_id = company_dim.company_id

ORDER BY 
    total_job DESC











select
    job_id,
    COUNT(*) AS total_job
FROM job_postings_fact























