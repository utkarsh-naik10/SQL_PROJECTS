/*For job posting for data analyst show the salary along with the avg salary for that role
 and also print the difference in salary and avg salary*/


SELECT 
    skills_job_dim.job_id,
    skills_dim.skills,
    job_title_short,
    job_location,
    salary_year_avg,
    ROUND(CAST(AVG(salary_year_avg) OVER(PARTITION BY job_title_short)AS NUMERIC),2) AS avg_sal,
    salary_year_avg-ROUND(CAST(AVG(salary_year_avg) OVER(PARTITION BY job_title_short)AS NUMERIC),2) AS sal_gap
FROM job_postings_fact
LEFT JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
LEFT JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE job_title_short='Data Analyst' AND salary_year_avg IS NOT NULL AND skills_dim.skills IS NOT NULL
ORDER BY salary_year_avg DESC