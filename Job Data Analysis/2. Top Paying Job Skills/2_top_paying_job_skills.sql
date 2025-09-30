/*What skills are required for the top-paying Data Analyst jobs?
1.Identify the top 10 highest-paying Data Analyst jobs.
2.Retrieve the skills required for those roles.*/

WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title_short,
        job_postings_fact.salary_year_avg annual_salary,
        company_dim.name company_name
    FROM 
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id=company_dim.company_id
    WHERE 
        salary_year_avg IS NOT NULL
        AND job_title_short='Data Analyst'
    ORDER BY 
        salary_year_avg DESC
    LIMIT 10
)
SELECT top_paying_jobs.*,
    skills_dim.skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
ORDER BY annual_salary DESC
