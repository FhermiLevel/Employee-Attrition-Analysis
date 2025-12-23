# Employee-Attrition-Analysis
Employee attrition and workforce stability analysis using MySQL for data preparation and Power BI for interactive dashboards and executive insights.

---

## 📌 Project Overview

This project presents an **Employee Attrition and Workforce Stability Analysis** using **MySQL as the data backend** and **Power BI for business intelligence and visualization**.

The objective is to analyze employee attrition patterns, identify key workforce risks and quantify the business impact of employee turnover to support **data-driven HR decision-making and retention strategies**.

The project is designed following **real-world enterprise analytics practices**, where data is stored, queried, and managed in a relational database before being visualized for stakeholders.

---

## 🎯 Business Problem

Employee attrition leads to:

* Increased recruitment and onboarding costs
* Loss of experienced talent
* Reduced productivity
* Workforce planning challenges

This project answers key HR and management questions:

* Which roles and departments experience the highest attrition?
* How does overtime affect employee turnover?
* Which age and tenure groups are most at risk?
* What is the financial cost of attrition?
* Where should retention efforts be prioritized?

---

## 🧱 Analytics Architecture

```
MySQL  →  Power BI
```

* **MySQL** acts as the centralized data storage and query layer
* **Power BI** transforms queried data into interactive dashboards and insights

---

## 🛠 Tools & Technologies Used

### 1. MySQL (Database & Data Preparation)

MySQL is used as the **relational database backend** for this project.

**MySQL is used for:**

* Storing structured HR employee data
* Managing employee, department, role and attrition records
* Data filtering, aggregation and joins using SQL
* Calculating attrition counts and rates
* Creating clean, analysis-ready datasets
* Acting as a single source of truth for reporting

**Typical SQL operations include:**

* `GROUP BY` analysis (department, role, age group, tenure)
* Attrition rate calculations
* Overtime vs attrition analysis
* Department-level and role-level summaries
* Cost aggregation related to attrition

> MySQL ensures data accuracy, scalability and consistency—key requirements in enterprise HR analytics.

---

### 2. Power BI (Visualization & Decision Support)

Power BI is used to convert MySQL query outputs into **interactive, executive-ready dashboards**.

**Power BI is used for:**

* Data modeling and relationships
* DAX measures for KPIs
* Interactive dashboards and slicers
* Trend and comparative analysis
* Executive summary visuals
* Workforce risk identification

---

## 📊 Key KPIs & Metrics

* Total Employees
* Attrition Count
* Attrition Rate
* Overtime Count
* Overtime Rate
* Average Monthly Salary
* Average Employee Tenure
* Total Attrition Cost

---

## 🔍 Key Insights (Executive Summary)

* **Attrition is concentrated in operational and customer-facing roles**, particularly Sales Executives, Laboratory Technicians, and Research roles.
* **Employees working overtime are significantly more likely to leave**, making workload a major attrition driver.
* **Early-career employees (ages 26–35) account for the largest share of attrition**, indicating higher workforce mobility.
* **Low job involvement strongly correlates with higher attrition**, while higher engagement improves retention.
* **Attrition patterns vary across departments rather than gender alone**, with Sales and HR showing elevated turnover.
* **Higher salaries alone do not prevent attrition**, highlighting the importance of non-financial factors.
* **Total attrition cost exceeds $4.6M**, representing a significant financial risk to the organization.
* **Employees with shorter tenure are more likely to exit**, emphasizing the importance of early-stage retention.

---

## 💼 Business Implications

* Retention strategies should prioritize **high-attrition operational roles**
* Reducing excessive overtime can significantly lower turnover
* Engagement and career development are critical to retention
* Early-career employee support programs can yield high ROI
* Even small reductions in attrition can generate substantial cost savings

---

## 📁 Repository Structure

```
Employee-Attrition-MySQL-PowerBI/
│
├── data/
│   └── HR_Attrition_Data.csv
│
├── sql/
│   └── attrition_queries.sql
│
├── powerbi/
│   └── Employee_Attrition_Dashboard.pbix
│
├── images/
│   └── dashboard_preview.png
│
└── README.md
```

---

## 🚀 How to Use the Project

1. Load HR employee data into **MySQL**
2. Run SQL queries to aggregate and analyze attrition metrics
3. Connect Power BI to the MySQL database (or exported query results)
4. Refresh the data model
5. Interact with the dashboard using filters and slicers

---

## 🔮 Future Enhancements

* Live MySQL–Power BI connection for automated refresh
* Predictive attrition indicators using historical trends
* Integration with workforce planning and headcount forecasting
* Department-specific retention dashboards

---

## 📬 Contact

**Oluwadare Olalekan**
Data Scientist | Data Analyst | MySQL | Power BI | HR & Workforce Analytics
📧 Email: [olalekanoluwadare20@gmail.com](mailto:olalekanoluwadare20@gmail.com)
🔗 LinkedIn: (https://www.linkedin.com/in/olalekan-oluwadare-628356237/)
