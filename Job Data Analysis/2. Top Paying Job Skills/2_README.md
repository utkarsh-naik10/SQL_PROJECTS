### QUESTION:
What skills are required for the top-paying Data Analyst jobs?
1.Identify the top 10 highest-paying Data Analyst jobs.
2.Retrieve the skills required for those roles.

********************************************************************************
### SQL QUERY:
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

********************************************************************************
### EXPLANATION:
CTE (top_paying_jobs) → selects the top 10 highest-paying Data Analyst jobs.
Filter → salary_year_avg IS NOT NULL ensures only jobs with specified salaries are included.
Join → connects top-paying jobs with their associated skills via skills_job_dim and skills_dim.
Result → one row per job–skill pair, showing which skills are required for each high-paying role.

********************************************************************************
### SAMPLE OUTPUT:
| Job ID | Job Title      | Company       | Annual Salary ($) | Skill    |
|--------|----------------|---------------|-------------------|----------|
| 101    | Data Analyst   | SnowTech Inc  | 145,000           | SQL      |
| 101    | Data Analyst   | SnowTech Inc  | 145,000           | Python   |
| 102    | Senior Analyst | Insight Corp  | 140,500           | Tableau  |
| 102    | Senior Analyst | Insight Corp  | 140,500           | R        |
| 103    | Data Analyst   | DataWorks Ltd | 138,200           | Power BI |

(Values above are illustrative — actual results depend on the dataset.)

********************************************************************************
### WHY THIS MATTERS?
Job seekers → learn which skills are essential for landing the highest-paying Data Analyst roles.
Employers → benchmark their job postings against market-leading skill requirements.
Data teams → demonstrates advanced SQL concepts like CTEs, filtering, joins, and ranking.