### QUESTION:
What are the most optimal skills to learn?
- Identify skills that are in high demand for Data Analyst roles.
- Check which of those skills are also associated with high average salaries.
- Focus only on remote roles with specified salaries.

### SQL QUERY:
```sql
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

### /*Alternate query- simplified*/

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
```

### EXPLANATION:
CTEs → split logic into two parts:
- skills_demand: counts demand for each skill.
- avg_sal: calculates the average salary associated with each skill.
- Filters → only Data Analyst roles, remote jobs, and postings with salary data.
- JOIN → combine demand and salary insights into one result set.
- HAVING / WHERE demand_count > 10 → ensures only skills with meaningful demand are shown.
- ORDER BY → ranks skills first by demand, then by salary.
- Alternative query → achieves the same logic in a single query, without CTEs.


### SAMPLE OUTPUT:
| Skill ID | Skill    | Demand Count | Avg Salary ($) |
|----------|----------|--------------|----------------|
| 101      | SQL      | 320          | 112,300        |
| 102      | Python   | 290          | 115,500        |
| 103      | Tableau  | 210          | 110,800        |
| 104      | R        | 180          | 109,200        |
| 105      | Power BI | 175          | 107,500        |

(Values above are illustrative — actual results depend on the dataset.)


### WHY THIS MATTERS?
Job seekers → know not just which skills are popular, but which ones are also profitable.
- Employers → align job postings with skills that drive market competitiveness.
- Data teams → demonstrates advanced SQL (CTEs, joins, grouping, filtering, combining demand + salary metrics).
