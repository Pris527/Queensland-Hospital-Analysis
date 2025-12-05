
🏥 **Queensland Emergency Care Visibility — Exploratory Data Insights**  
**Improving decision visibility for faster emergency care in Queensland**

---

📌 **Project Overview — Why This Matters**

Emergency departments (EDs) are under continuous pressure. Patient demand fluctuates unpredictably, wait times increase during surges, and leaders often have limited visibility into real-time performance. As a result:

- People needing urgent care wait longer
- Hospital teams become strained without warning
- Resourcing decisions rely on incomplete information

🎯 **Objective**

This **exploratory data analysis** reveals where and when pressures occur — and highlights **data blind-spots** restricting fair and informed health decision-making.

📌 The visual below illustrates consistent peak congestion during late-day hours:

![Queensland_Hospitals](Images/Hospital_Peak_times.jpeg)

A lack of timely and complete data means risks to patient experience can remain invisible until too late.

---

📈 **KPI Summary — Emergency Care Performance Visibility**

| KPI                                                    | Result | Interpretation |
|-------------------------------------------------------|-------:|----------------|
| Total hospitals in dataset                             | **36** | Full geographic footprint across Queensland |
| Hospitals reporting *any* wait-time data               | **31 / 36** *(86%)* | Strong baseline visibility for demand patterns |
| Hospitals reporting **both** wait-time + capacity data | **5–8 / 36** *(20%)* | Major reporting maturity gap → critical blind spots |
| Median wait time across reporting hospitals            | **18 minutes** | Good performance where data is available |
| Null values across reporting categories                | **High** | Impacts fair comparison + risk prioritisation |
| Highest demand period                                  | **Weekdays 17:00–21:00** | After-hours surge drives operational strain |

> ✨ **Key Risk:** Good performance cannot be validated in hospitals with incomplete reporting.

---

🔍 **Business Questions**

This analysis supports leadership decision-making by answering:

- Which hospitals experience the highest emergency demand — and when?
- How do wait times vary across the state?
- Does higher treatment capacity improve responsiveness?
- Where are reporting gaps harming visibility?
- Which operational levers could reduce risk + improve experience?

---

📀 **Data Sources**

| Dataset | Purpose |
|---------|---------|
| ED Busyness | Demand cycles by day/time |
| Current Metrics | Wait-time performance |
| Facility Metadata | Location, capacity, and service details |

📎 Sourced from **Queensland Government Open Data Portal**  
(Links in repository)

---

🧠 **Tech Stack**

| Component | Tools |
|----------|-------|
| Data Querying & Modelling | **SQL (BigQuery)** — JOINs, SAFE_CAST, type formatting |
| Visualisation | **Tableau Desktop** + Public |
| Insight Development | Behaviour-aware interpretation & narrative synthesis |

---

🔧 **Methodology — EDA Workflow**

1. Data ingestion into BigQuery staging
2. Cleansing + type standardisation
3. **LEFT JOIN** model → retain all 36 hospitals
4. Derived views for:
   - Peak demand patterns
   - Wait-time responsiveness
   - Capacity-related risks
5. Tableau dashboard development:
   - Statewide ED coverage map
   - Heatmap of hourly strain
   - Capacity vs responsiveness scatter
   - KPI summary → reporting maturity assessment

---

📉 **Data Quality = Leadership Risk**

| Area | Current State | Impact |
|------|---------------|--------|
| Reporting completeness | Strong baseline coverage | Able to track surge patterns |
| Capacity reporting | Extremely limited | Leaders lack visibility into bottlenecks |
| Timeliness | Inconsistent | Delayed recognition of patient risk |
| Hospital equity | Regional gaps | Fair access cannot be assessed |

> **Uneven reporting = inequity in decision visibility across Queensland hospitals**

---

📊 **Key Insights**

**1️⃣ Demand Peaks Most Evenings (17:00–21:00)**  
Staffing patterns may not reflect real-world demand.

![Queensland_Hospitals](Images/Hospital_Peak_times.jpeg)

**2️⃣ More Capacity ≠ Faster Care**  
Internal processes drive responsiveness — not just size.

![Queensland_Hospitals](Images/Capacity_delay.jpeg)

➡ Only ~20% of hospitals provide **complete** performance metrics → comparisons limited.

**3️⃣ Reporting Gaps Hide Performance Risks**  
Especially in regional communities.

![Queensland_Hospitals](Images/map_reporting_analysis.jpeg)

---

🧩 **Recommendations — For Health Leadership**

| Theme | Action | Expected Benefit |
|------|--------|-----------------|
| Visibility | Standardise reporting of wait + capacity data | Fair statewide comparisons |
| Responsiveness | Align staffing with peak times | Reduced congestion + faster triage |
| Accountability | Public dashboards | Greater trust + transparency |
| Risk Readiness | Alerts for emerging bottlenecks | Faster escalation + safer care |

Low-cost, high-impact improvements.

---

🚀 **Future Enhancements — Human-Centred Insight for Better Care**

Building on this project, I plan to:

- Conduct staff interviews to understand workflow + behavioural drivers of delays
- Improve data completeness with manual validation + clearer documentation
- Integrate new datasets such as **regional population** and **staff ratios**
- Expand dashboard filtering (region, hospital type, timeframe)
- Create a **web-friendly** version to support non-technical decision-makers

Bridging quantitative insight with lived experience → **more patient-centred care**.

---

🗂 **Access the Dashboard**

🔗 https://public.tableau.com/app/profile/presca.evans/viz/QueenslandHospitalAnalysis/QueenslandHospitalAnalysis

---

📁 **Repository Structure**
/sql              → BigQuery cleaning & modelling scripts  
/dashboard        → Tableau workbook (.twbx)  
README.md         → Project documentation  



---

👩🏽‍⚕️ **Author — Dr. Presca Wanki**  
Data Analyst · Change Support · Mixed-Method Researcher  
📍 Relocating to Brisbane QLD — January Start  

Using data + human insight to strengthen public-service access and community outcomes.
