# Queensland-Hospital-Analysis


🏥 **Queensland Emergency Care Visibility — Exploratory Data Insights**
**Improving decision visibility for faster emergency care in Queensland**


📌 **Project Overview — Why This Matters**

Emergency departments play a critical role in Queensland’s healthcare system — but they face ongoing challenges with patient demand, wait times, and visibility of performance. Limited insight into real-time conditions can mean:

- Patients wait longer for urgent care

- Care teams are stretched without warning

- Resource allocation is based on outdated assumptions


🎯 **Objective**:

This project uses publicly available ED data to uncover when and where pressures occur — and identify where data blind-spots restrict effective decision-making.

📸 Insert Dashboard Screenshot Here
➡ Recommended: KPI summary or hospital demand heatmap
Include caption:

“This dashboard reveals variations in demand and reporting coverage across Queensland hospitals.”

🔍 **Business Questions**

Base on the above, this project is designed to drive actionable insights:

- Which hospitals experience the highest emergency demand — and when?
-  How do wait times vary across the state?
-  Does higher treatment capacity improve service responsiveness?
- Where are reporting gaps harming visibility?
- What operational levers could improve patient flow and experience?

I used these questions transformed a raw dataset into decision-support intelligence.


📀 **Data Sources**

| Dataset           | Key Purpose                                     |
| ----------------- | ----------------------------------------------- |
| ED Busyness       | Understand demand patterns by day/time          |
| Current Metrics   | Evaluate wait-time performance & service status |
| Facility Metadata | Provide location, size & service context        |

📎 **All sourced from Queensland Government Open Data portals**
(Links will be added in GitHub repo resources section)



🧠**Tech Stack**

| Component                | Tools                                                |
| ------------------------ | ---------------------------------------------------- |
| Data Querying & Cleaning | SQL (Google BigQuery)                                |
| Data Modelling           | BigQuery Views, LEFT JOINS                           |
| Visualisation            | Tableau Desktop + Tableau Public                     |
| Communication            | Insight storytelling, healthcare operational framing |



**Methodology — Exploratory Data Analysis (EDA)**

1. Load data into BigQuery staging tables
2. Data cleansing & type conversion (SAFE_CAST → METRIC fields)
3. Joining tables → preserving full hospital list via LEFT JOIN
4. Create analysis views:

    - Wait-times per facility

    - Busyness patterns

    - Facility capacity metadata

5.  Build Tableau dashboard components:

    - Map of statewide ED coverage

    - Heatmap → demand peaks by hour/day

    - Scatter → capacity vs responsiveness

    - KPI summary → data quality + reporting maturity


    📉 **Data Quality = Leadership Risk** 

This dataset tells **two stories**:

| Metric                           | Expected       | Actual              | Insight                   |
| -------------------------------- | -------------- | ------------------- | ------------------------- |
| Total Hospitals                  | 35–36          | 36                  | Full coverage achieved 👍 |
| Any Wait-time Reported           | >90%           | 31                  | Acceptable visibility     |
| *Full* Wait + Capacity Reporting | >75%           | 5–8                 | ❌ Reporting immaturity    |
| Timeliness of Data Reporting     | Near-real-time | Highly inconsistent | Operational blind spots   |


📌 **Insight:**
Most hospitals publish some data — but decision-critical metrics are incomplete for majority of sites.

This limits:

- Leadership response capability

- Transparency for communities

- Equity for regional Queenslanders


📊 **Key Insights (Visual Evidence in Dashboard)**



**Demand Peaks Most Evenings (17:00–21:00)**

Patients arrive fastest after normal business hours → staffing often mismatches reality.


**Capacity Does Not Predict Wait Times**

Larger hospitals are not always faster — internal process bottlenecks matter more.

![Queensland_Hospitals](capacity_delay.jpeg)


➡ Only ~20% of hospitals provide full performance metrics → comparisons limited.


