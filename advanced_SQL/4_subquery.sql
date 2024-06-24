WITH company_count_jobs AS (
    SELECT 
        company_id,
        count(*) AS total_jobs

    FROM
        job_postings_fact
    GROUP BY 
        company_id
)

SELECT 
    company_dim.name AS company_name,
    company_count_jobs.total_jobs

FROM
    company_dim
    
LEFT JOIN company_count_jobs 
ON company_dim.company_id = company_count_jobs.company_id
ORDER BY 
    total_jobs DESC