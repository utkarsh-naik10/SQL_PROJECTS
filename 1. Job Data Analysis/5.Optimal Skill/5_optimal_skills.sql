/*What are the most optimal skills to learn?
1.Identify skills that are in high demand for Data Analyst roles.
2.Check which of those skills are also associated with high average salaries.
3.Focus only on remote roles with specified salaries.
*/

WITH skills_demand AS(
SELECT
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE job_title_short='Data Analyst' AND job_work_from_home=1 AND salary_year_avg IS NOT NULL
GROUP BY skills_dim.skill_id,skills_dim.skills
),  avg_sal AS(
    SELECT 
        skills_job_dim.skill_id,
        ROUND(AVG(salary_year_avg::NUMERIC),2) AS avg_sal
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE job_title_short='Data Analyst' AND salary_year_avg IS NOT NULL AND job_work_from_home=1
GROUP BY skills_job_dim.skill_id
)
SELECT skills_demand.skill_id,
    skills_demand.skills,
    demand_count,
    avg_sal
FROM skills_demand
INNER JOIN avg_sal ON skills_demand.skill_id=avg_sal.skill_id
WHERE demand_count>10
ORDER BY demand_count DESC,
        avg_sal DESC

/*OR*/

SELECT skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) as demand_count,
    ROUND(AVG(job_postings_fact.salary_year_avg::NUMERIC),2) AS avg_sal
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE job_title_short='Data Analyst' 
    AND salary_year_avg IS NOT NULL 
    AND job_work_from_home=1
GROUP BY
    skills_dim.skill_id,
    skills_dim.skills
HAVING
    COUNT(skills_job_dim.job_id)>10
ORDER BY demand_count DESC,
        avg_sal DESC





