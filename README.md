### HR Attrition Analysis: Predictive Insights & Retention Strategy
## 📌 Project Overview
Employee attrition is a significant financial and operational challenge for any multinational corporation. This project provides an end-to-end data solution to identify the primary drivers of turnover and categorize high-risk employee segments using SQL, Python, and Power BI. 

## 🛠️ Tech Stack

SQL (MS SQL Server): Used for data engineering, risk-ranking, and creating predictive categories. 
Python (Pandas): Utilized for Exploratory Data Analysis (EDA) and feature binning. 
Power BI: Developed an interactive dashboard for executive-level storytelling. 

## 📊 Business Insights & Problem Solving
The analysis identified three critical areas where HR intervention can reduce turnover:

# 1. The Early-Career Gap
Employees in the 0-1 Years tenure group exhibit the highest attrition rate at 25.96%, compared to just 10.42% for employees with 8+ years of experience. 
# 2. Burnout Risk Segmentation
Using SQL logic, I engineered a risk_category to flag employees working Overtime with a Monthly Income below $4,000. This provides a proactive list for HR to address potential burnout before resignation. 
# 3. Departmental Prioritization
By applying SQL Window Functions (RANK), I identified that Sales Executives and Laboratory Technicians carry the highest risk rank, signaling a need for department-specific retention roadmaps. 

## 🧠 Key Learning
The most significant takeaway from this project was moving from Descriptive Analytics (what happened) to Prescriptive Analytics (how to fix it). As an analyst, my value lies in pinpointing "High Risk" groups to enable proactive leadership intervention rather than reactive reporting. 

## 📂 Repository Structure

Hr-Attrition Analysis.sql: Scripts for data transformation and risk categorization. 
HR-Attrition.ipynb: EDA and statistical grouping logic. 
clean_hr_data.csv: The processed dataset. 
Hr-Attrition.pbix: The interactive Power BI report. 

Author: Arnav Gurung
Role: Data Analyst
