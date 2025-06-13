WITH remote_job_skills AS (
SELECT
    skill_id,
    COUNT(*) AS skill_count
FROM
    skills_job_dim AS skills_to_job

INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skills_to_job.job_id
WHERE
    job_postings.job_work_from_home = true

GROUP BY
    skill_id)


LIMIT 100