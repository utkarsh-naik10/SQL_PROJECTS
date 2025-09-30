### QUESTION:
1.What are the top-paying Data Analyst jobs?
- Which are the top 10 Data Analyst jobs available remotely?  
- Show only job postings with specified (non-null) salaries.  
--- 
### SQL QUERY:
```sql 
SELECT
    company_dim.name,
    job_title,
    job_title_short,
    job_country,
    salary_year_avg,
    job_schedule_type,
    job_location
    
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id=company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home=1
ORDER BY 
    salary_year_avg DESC
LIMIT 10
```
--- 
### EXPLANATION:
- Filter by role → job_title_short = 'Data Analyst' ensures only Data Analyst postings are included.
- Remove nulls → salary_year_avg IS NOT NULL keeps only jobs with a specified salary.
- Remote focus → job_work_from_home = 1 restricts results to remote roles.
- Ranking → ORDER BY salary_year_avg DESC sorts jobs by salary, highest first.
- Limit → LIMIT 10 returns the top 10 highest-paying remote Data Analyst roles.

--- 
### SAMPLE OUTPUT:

| Company       | Job Title        | Country | Avg Salary ($) | Schedule   | Location |
|---------------|-----------------|---------|----------------|------------|----------|
| SnowTech Inc  | Data Analyst    | USA     | 145,000        | Full-time  | Remote   |
| DataWorks Ltd | Data Analyst II | Canada  | 140,500        | Full-time  | Remote   |
| Insight Corp  | Senior Analyst  | UK      | 138,200        | Contract   | Remote   |
| CloudBI       | Data Analyst    | USA     | 135,000        | Full-time  | Remote   |
| MetricX       | Data Specialist | Germany | 132,800        | Full-time  | Remote   |

(Values above are illustrative — actual results depend on the dataset.)
--- 
### WHY THIS MATTERS?
- Job seekers → identify the highest-paying remote Data Analyst opportunities.
- Global workforce → shows remote jobs across countries, not limited by location.
- Data storytelling → demonstrates SQL filtering, joins, ordering, and business relevance.