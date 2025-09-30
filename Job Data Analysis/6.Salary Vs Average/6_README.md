QUESTION:
For Data Analyst job postings, show the salary along with the average salary for that role, and also calculate the difference between the two.
******************************************************************************************************
SQL QUERY:
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
******************************************************************************************************
EXPLANATION:
Filter → only Data Analyst postings with a specified salary and skills.
Window function → AVG(salary_year_avg) OVER(PARTITION BY job_title_short) calculates the average salary for the role across all postings.
Difference calculation → salary_year_avg - avg_sal shows how much higher or lower each job’s salary is compared to the average.
Result → for each job posting, you get:
Its salary
The average salary for Data Analysts
The difference (sal_gap)
******************************************************************************************************
SAMPLE OUTPUT:
Job ID	Skill	Job Title	Location	Salary ($)	Avg Salary ($)	Gap ($)
501	Python	Data Analyst	Remote		145000		110500		+34500
502	SQL	Data Analyst	USA		120000		110500		+9500
503	Tableau	Data Analyst	Canada		108000		110500		-2500
504	Excel	Data Analyst	UK		102000		110500		-8500
******************************************************************************************************
WHY THIS MATTERS?
job seekers → see if a specific job offer is paying above or below the market average.
Employers → benchmark their postings against industry averages.
Data teams → demonstrates SQL skills with window functions, joins, filtering, and custom calculations.