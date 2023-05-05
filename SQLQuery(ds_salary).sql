select *
from  project2.dbo.ds_salaries

--count of jobs
select COUNT(work_year) as [rows]
from  project2.dbo.ds_salaries

--finding how many job title there is and amount of job listing with that title, with avg salary in USD
select distinct(job_title), COUNT(job_title)as [number_of_jobs], AVG(salary_in_usd) as [Avg_salary]
from  project2.dbo.ds_salaries
group by job_title
order by [Avg_salary]


select distinct(employment_type), COUNT(employment_type)
from  project2.dbo.ds_salaries
group by employment_type


--job listing where employee residence is not same to company location
select *
from  project2.dbo.ds_salaries
where employee_residence <> company_location
order by experience_level


select work_year, count(work_year) [Counts] from project2.dbo.ds_salaries
group by work_year order by work_year


select remote_ratio, count(remote_ratio) [Counts] from project2.dbo.ds_salaries
group by remote_ratio

--different experience level jobs in 2023 with 100% remote

select [work_year]
      ,[experience_level]
      ,[employment_type]
      ,[job_title]
      ,[salary_in_usd]
      ,[remote_ratio]
      ,[company_location]
      ,[company_size]
from project2.dbo.ds_salaries
where work_year = '2023' and remote_ratio = '100' and experience_level = 'EN'


select [work_year]
      ,[experience_level]
      ,[employment_type]
      ,[job_title]
      ,[salary_in_usd]
      ,[remote_ratio]
      ,[company_location]
      ,[company_size]
from project2.dbo.ds_salaries
where work_year = '2023' and remote_ratio = '100' and experience_level = 'MI'


select [work_year]
      ,[experience_level]
      ,[employment_type]
      ,[job_title]
      ,[salary_in_usd]
      ,[remote_ratio]
      ,[company_location]
      ,[company_size]
from project2.dbo.ds_salaries
where work_year = '2023' and remote_ratio = '100' and experience_level = 'SE'