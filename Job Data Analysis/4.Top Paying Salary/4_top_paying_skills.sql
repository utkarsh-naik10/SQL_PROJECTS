/*“What are the top skills based on salary for my role (Data Analyst)?”
1.Look at the average salary associated with each skill for Data Analysts.
2.Focus only on postings with specified salaries, regardless of location.
*/


SELECT skills,
        ROUND(AVG(salary_year_avg::NUMERIC),2) AS average_salary
FROM 
        job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE 
        job_title_short='Data Analyst' AND 
        salary_year_avg IS NOT NULL
GROUP BY 
        skills
ORDER BY 
        average_salary DESC
LIMIT 10