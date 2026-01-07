# Case-study2-Loan-Default-
# 📊 Credit Risk & Loan Default Analysis (Banking Case Study)

## 📌 Project Overview
This project focuses on analyzing **loan default risk** for a retail bank using **SQL and Power BI**.  
The goal is to identify **high-risk customers**, understand **drivers of default**, measure **financial exposure**, and support **data-driven credit decisions** such as **Approve / Review / Reject**.



---

## 🎯 Business Objectives
- Reduce overall **loan default rate**
- Identify **high-risk customer segments**
- Measure **portfolio risk exposure**
- Enable **risk-based pricing**
- Support automated **credit decisioning**

---

## ❓ Key Business Questions
- What is the overall default rate of the loan portfolio?
- Which loan types have the highest default risk?
- How do credit score, income, and age impact defaults?
- Which regions and products carry the highest financial exposure?
- Who should be **approved**, **reviewed**, or **rejected** for loans?
- Which customer segments require **higher interest rates**?

---

## 🧱 Dataset Description
**File:** `loan_data.xlsx / loan_data.csv`  
**Records:** 100 loan customers  

### Key Columns:
- `customer_id`
- `age`, `gender`, `region`
- `income`, `employment_years`
- `credit_score`
- `loan_type` (Personal, Home, Credit Card)
- `loan_amount`
- `interest_rate`
- `loan_term`
- `default_flag`
- `issue_date`

---

## 🛠 Tools & Technologies
- **SQL** – Data analysis, segmentation, decision logic
- **Power BI** – Dashboarding & DAX measures
- **Excel** – Dataset creation & preprocessing

---

## 📈 KPIs Tracked
- Total Loans
- Default Rate (%)
- Total Loan Amount
- Risk Exposure (Money at Risk)
- High-Risk Customer %
- Decision Distribution (Approve / Review / Reject)

---

## 📊 Dashboard Structure (Power BI)

### 🟦 Page 1: Executive Overview
- Portfolio default rate
- Loan exposure & money at risk
- Default trend over time
- Loan type vs default rate  

<img width="723" height="409" alt="Screenshot 2026-01-07 210216" src="https://github.com/user-attachments/assets/12905a65-ee3f-4f68-9e16-71c16a007a3f" />


**Key Insight:**  
> Unsecured loans drive defaults, while home loans contribute major exposure.

---

### 🟦 Page 2: Risk Segmentation
- Credit score band vs default rate
- Income group vs default rate
- Age group vs default rate  

<img width="716" height="407" alt="Screenshot 2026-01-07 210259" src="https://github.com/user-attachments/assets/f593ac3b-76f9-4eff-829e-01a7777ba5bf" />


**Key Insight:**  
> Low credit score and low-income customers contribute disproportionately to defaults.

---

### 🟦 Page 3: Portfolio Risk & Exposure
- Region-wise risk exposure
- Loan type vs financial exposure
- Exposure treemap  

<img width="729" height="410" alt="Screenshot 2026-01-07 210331" src="https://github.com/user-attachments/assets/5b8eef00-3535-4895-8a25-4b9bbff32291" />


**Key Insight:**  
> Default count alone is misleading — financial exposure tells the real risk story.

---

### 🟦 Page 4: Decision & Strategy
- Approve / Review / Reject segmentation
- High-risk customer %
- Credit score vs interest rate (risk-based pricing)
- Review customers action list

- <img width="733" height="411" alt="Screenshot 2026-01-07 210416" src="https://github.com/user-attachments/assets/391da6e3-4ab2-40f9-bd63-0947d06c42c1" />


**Key Insight:**  
> Rule-based credit decisioning can reduce defaults while improving operational efficiency.

---

## 🧠 Credit Decision Logic
Customers are classified using business-aligned rules:

- **REJECT**: Low credit score, low income, unstable employment, or past default  
- **REVIEW**: Borderline risk requiring manual verification  
- **APPROVE**: Strong credit profile and stable income  

This logic was implemented using **SQL CASE statements** and **Power BI calculated columns**.

---

## 💡 Key Outcomes & Insights
- Identified **high-risk segments** driving defaults
- Recommended **risk-based pricing** for unsecured loans
- Highlighted regions with **concentrated financial exposure**
- Demonstrated how policy tightening can **reduce default rate**
- Built an **actionable, executive-ready dashboard**

---

## 📌 How This Project Adds Value
- Demonstrates **end-to-end data analytics thinking**
- Translates data into **business decisions**
- Aligns with **banking & fintech risk analytics**
- Strong portfolio project for **Data Analyst roles**

---


