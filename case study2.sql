use study_case2;

select * from loan_def;

#Total Loans, Defaults & Defaults rate
select count(*) as total_loan ,
sum(default_flag) as total_defaults
from loan_def;

select count(*) as total_loan,
sum(default_flag) as total_defaults,
round(sum(default_flag)*100 / count(*) , 2) as default_rate_pct
from loan_def;

select loan_type,
count(*) as total_loans,
sum(default_flag) as total_flag,
round(sum(default_flag) * 100 / count(*) ,2) as total_defaults_pct
from loan_def
group by loan_type
order by total_defaults_pct;

select  * from loan_def;

#CUSTOMER RISK ANALYSIS

SELECT 
case
when credit_score < 600 then "Very High Risk"
when credit_score between 600 and 649 then "High Risk"
when credit_score between 650 and 699 then "Medium Risk"
when credit_score > 700 then "Low Risk"
end as credit_risk_band,
count(*) as total_customers ,
sum(default_flag) as total_default_flag,
round(sum(default_flag) * 100 / count(*) ,2) as default_rate_pct
from loan_def
group by credit_risk_band
order by default_rate_pct;

#Defaulter Categorization by income
select
case 
when income < 400000 then "Low Income"
when income between 400000 and 800000 then "Mid Income"
when income between 800000 and 1200000 then "Upper Mid Income"
else "High Income" 
end as income_band,
 count(*)  as total_customers,
 sum(default_flag) as total_default_flag,
 round(sum(default_flag) * 100 / count(*) ,2) as default_flag_pct
 from  loan_def
 group by income_band
 order by default_flag_pct;

#Default flag by age 

select 
case 
when age < 24 then "Bachelors"
when age between 25 and 40 then "Working professional"
else "Senior"
end as age_band,
count(*) as total_customers,
sum(default_flag) as total_default_flag,
round(sum(default_flag) *100 / count(*) ,2) as total_default_pct
from loan_def
group by age_band
order by total_default_pct desc;

#DEFAULT FLAG REGION WISE

select 
region,
sum(
case 
when default_flag = 1 then loan_amount
else 0 
end) as region_default,
sum(loan_amount) as total_loan,
count(*) as total_customer,
sum(default_flag) as total_default_flag ,
round(sum(default_flag) *100 / count(*) , 2) as total_default_pct
from loan_def
group by region
order by total_default_pct desc;

#High Risk Customers
select customer_id ,
age,
gender,
income,
employment_years,
credit_score,
loan_type,
loan_amount
from loan_def
where income < 500000 
and credit_score < 600
and default_flag = 1;


#TOTAL LOAN AMOUNT AT RISK 

select sum(loan_amount) as total_loan_amount_at_risk 
from loan_def
where default_flag = 1;

#MOST RISKY REGIONS
SELECT  region, 
sum(default_flag) as total_defaul_flags,
round(sum(default_flag) * 100 / count(*) ,2) as total_default_flag_pct
from loan_def
group by region
order by total_default_flag_pct desc;

#AVG LOAN AMOUNT DEFAULT - NON-DEFAULT

SELECT avg(loan_amount) as avg_loan_amount , 
sum(default_flag) as total_default_flag ,
round(sum(default_flag) * 100 / count(*) ,2) as total_default_flag_pct
from loan_def
group by default_flag 
order by total_default_flag_pct desc;

 #DEFAULT OVER TIME 
 
 select date_format(issue_date , '%y - %m') as month,
 count(*) as total_customers,
 sum(default_flag) as total_default_flag,
 round(sum(default_flag) * 100 / count(*) ,2) as total_default_flag_pct
 from loan_def
 group by month 
 order by month ;
 
 #WHICH SEGMENT NEEDS HIGHER INTEREST RATE
 SELECT  customer_id , credit_score , income , loan_type , interest_rate ,
 case
 when credit_score < 600 and income < 400000 and loan_type = "Credit Card" then "Very High Ineterst Rate"
 when credit_score between 600 and 649 and  loan_type = "Personal Card" then "HIgh Ineterst Rate"
 when credit_score between 650 and 699 then "Medium Ineterst Rate"
 else "Low Interest rate"
 end as intreste_segement
 from loan_def;
 
 #WHICH CUSTOMER SHOULD BE "REJECT/REVIEW/APPROVE" 
 select customer_id,
 credit_score,
 income , 
 employment_years,
 loan_type,
 default_flag,
 case 
 when credit_score < 600
 or income < 300000 
 or employment_years < 2
 or default_flag = 1 
 then 'REJECT' 
 when credit_score between 600 and 700
 or income between 300000 and 600000
 or employment_years between 2 and 5
  then 'REVIEW' 
  else "APPROVE"
  end as credit_decision
from loan_def;





