### QUESTION:
“What are the top skills based on salary for my role (Data Analyst)?”
- Look at the average salary associated with each skill for Data Analysts.
- Focus only on postings with specified salaries, regardless of location.
--- 

###  SQL QUERY:
```sql 
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
```
--- 

### EXPLANATION:
- Filter by role → job_title_short = 'Data Analyst' ensures we only consider Data Analyst postings.
- Remove nulls → salary_year_avg IS NOT NULL excludes postings without salary info.
- Join tables → connect job postings to skills via skills_job_dim and skills_dim.
- Aggregation → AVG(salary_year_avg) computes the average salary for each skill.
- Ranking → ORDER BY avg_salary DESC sorts skills from highest to lowest salary association.
- Focus → LIMIT 10 returns only the top 10 highest-paying skills.
--- 

### Sample Output:

| Skill     | Avg Salary ($) |
|-----------|----------------|
| Snowflake | 120,000        |
| Python    | 115,500        |
| SQL       | 112,300        |
| Tableau   | 110,800        |
| R         | 109,200        |

(Values above are illustrative — actual results depend on the dataset.)
--- 

### WHY THIS MATTERS?
- This query identifies which skills drive higher salaries for Data Analysts.
- It’s a powerful insight for:
- Job seekers → knowing which skills to prioritize learning.
- Employers → understanding market demand and competitive salary alignment.
- Data teams → showcasing SQL skills (joins, aggregation, filtering, ranking).