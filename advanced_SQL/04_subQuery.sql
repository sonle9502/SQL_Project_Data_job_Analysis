SELECT
    company_id,
    name AS company_name
from company_dim

WHERE company_id IN (
    SELECT company_id
    from job_postings_fact
    WHERE job_no_degree_mention = TRUE
    ORDER BY company_id
)