
SELECT
    COUNT(job_id) as number_of_jobs,
    CASE 
        when job_location = 'Anywhere' then 'Remote'
        when job_location = 'New York, NY' then 'Local'
        else 'Onsite'
    END AS location_category
FROM job_postings_fact
WHERE 
    job_title = 'Data Analyst'
GROUP BY
    location_category;
    