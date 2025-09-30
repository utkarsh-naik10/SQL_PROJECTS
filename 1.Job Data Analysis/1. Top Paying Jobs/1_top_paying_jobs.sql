/*1.What are the top-paying Data Analyst jobs?
2.Which are the top 10 Data Analyst jobs available remotely?
3.Show only job postings with specified (non-null) salaries.
*/

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
JOIN company_dim ON job_postings_fact.company_id=company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home=1
ORDER BY 
    salary_year_avg DESC
LIMIT 10