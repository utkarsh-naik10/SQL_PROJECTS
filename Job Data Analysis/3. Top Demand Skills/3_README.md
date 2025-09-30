### QUESTION:
What are the top 5 in-demand skills for my role (Data Analyst), considering only remote jobs?
- Count the frequency of each skill across remote Data Analyst job postings.
- Return the top 5 most in-demand skills.
--- 
### SQL QUERY:
```sql
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

/*ALTERNATE QUERY*/

SELECT skills,
    COUNT(*) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE job_title_short='Data Analyst' AND job_work_from_home=1
GROUP BY skills
ORDER BY demand_count DESC
LIMIT 5

```
--- 
### EXPLANATION:
- Filter → restricts to remote roles only (job_work_from_home = 1).
- Role focus → job_title_short = 'Data Analyst' ensures results are role-specific.
- Aggregation → counts how often each skill appears across job postings.
- Ranking → sorts skills by demand (highest to lowest).
- Focus → LIMIT 5 returns only the top 5 most in-demand skills.
- CTE vs direct query → both queries give the same result; the CTE makes the logic easier to follow, while the second version is more concise.

--- 
### SAMPLE OUTPUT:
| Skill    | Demand Count |
|----------|--------------|
| SQL      | 320          |
| Python   | 290          |
| Excel    | 250          |
| Tableau  | 210          |
| Power BI | 185          |

(Values above are illustrative — actual results depend on the dataset.)

--- 
### WHY THIS MATTERS?
- Job seekers → understand which skills are most in demand for remote Data Analyst positions.
- Remote professionals → tailor skill development to align with remote job market needs.
- Data teams → demonstrates SQL proficiency in CTEs, joins, filtering, grouping, and ranking.