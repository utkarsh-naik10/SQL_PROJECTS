/*whar are top 5 in demand skills for my role?
Include work from home option only*/
WITH remote_job AS(
SELECT skill_id,
    COUNT(*) AS cnt
FROM skills_job_dim
INNER JOIN job_postings_fact ON skills_job_dim.job_id=job_postings_fact.job_id
WHERE job_postings_fact.job_work_from_home= 1 AND
    job_postings_fact.job_title_short='Data Analyst'
GROUP BY skill_id)
SELECT
    skills_dim.skills,
    cnt
FROM remote_job
INNER JOIN skills_dim ON remote_job.skill_id=skills_dim.skill_id
ORDER BY cnt DESC
LIMIT 5

/*OR*/

SELECT skills,
    COUNT(*) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE job_title_short='Data Analyst' AND job_work_from_home=1
GROUP BY skills
ORDER BY demand_count DESC
LIMIT 5