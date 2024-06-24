WITH remote_jobs_skill AS (
    SELECT
        
        skill_id,
        count(*) AS count_job_remote
        
    FROM
        skills_job_dim AS skill_to_job
    INNER JOIN job_postings_fact AS Job_posting 
    ON  Job_posting.job_id = skill_to_job.job_id 

    WHERE
        Job_posting.job_work_from_home = 'TRUE' AND
        Job_posting.job_title_short = 'Data Analyst'
    GROUP BY
        skill_id
)

SELECT
    remote_jobs_skill.skill_id AS skill_id,
    skill_dim_table.skills AS skill_name,
    
    count_job_remote

FROM
    remote_jobs_skill
INNER JOIN
    skills_dim AS skill_dim_table ON skill_dim_table.skill_id = remote_jobs_skill.skill_id
ORDER BY
    count_job_remote DESC
LIMIT
    5;