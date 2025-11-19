# Academic Risk & Strategic Efficiency Dashboard (Power BI, Python, PostgreSQL)
**Goal:** Briefly explain the problem (accreditation risk, resource inefficiency, equity gaps) and how the dashboard provides **Administrative Intelligence** to solve it.

---

## Technical Stack & Skills Demonstrated

| Tool                    | Role in Project     | Demonstrated Skill                                                                              |
| ----------------------- | ------------------- | ----------------------------------------------------------------------------------------------- |
| Power BI                | Visualization & DAX | Dashboard design, KPI creation, and complex measure writing (Avg Fill Rate).                    |
| Python (`scikit-learn`) | Predictive Modeling | **Logistic Regression** for forecasting student attrition (moving from reporting to prediction) |
| PostgreSQL              | Data Governance     | Used as the scalable, secure source for data integrity and production readiness.                |

## Academic Risk & Strategic Foresight Dashboard
This data solution was developed to address critical administrative challenges faced by higher education institutions, specifically the interconnected issues of **accreditation risk**, **resource fiscal inefficiency**, and **equity gaps** in student retention. This dashboard is structured around three core pillars, designed to provide leadership with immediate, actionable intelligence.

### 1. Pillar One: Compliance and Accreditation Monitoring (The Pass Rate Gauge)
The foundation of the dashboard is strict regulatory oversight. Accreditation bodies often mandate minimum performance standards, such as a threshold for student pass rates in critical courses.
- **Goal:** Establish a real-time health check on the institution's ability to meet these external mandates.
- **Technical Implementation:** The **Pass Rate Gauge** is a dedicated Key Performance Indicator (KPI) that visualizes the current `Avg Pass Rate` against a defined `Accreditor Benchmark`. This calculation requires advanced Power BI (DAX) to aggregate and compare cohort performance dynamically.
- **Strategic Value:** It acts as an **early warning system**, allowing the Dean or program director to identify programs nearing non-compliance *before* an official audit, enabling proactive curriculum review or targeted faculty support.

### 2. Pillar Two: Fiscal Efficiency and Resource Optimization (The Fill Rate KPI)
While accreditation focuses on quality, fiscal efficiency focuses on resource utilization. Programs with low enrollment or poor resource turnover represent a financial drain that impacts institutional sustainability.
- **Goal:** Optimize the use of high-cost, high-resource assets (like specialized lab equipment or clinical placement slots).
- **Technical Implementation:** The **Average Fill Rate KPI** tracks the utilization of program capacity against actual enrollment (`enrollment` vs. `capacity`). This measure provides a clear, dollar-value metric on under-performing programs.
- **Strategic Value:** By quickly identifying programs with chronically low fill rates, administrators can make data-driven decisions on resource allocation---whether to invest in marketing for high-demand programs or to strategically sunset inefficient ones, ensuring resources are maximized across the School.

### 3. Pillar Three: Strategic Foresight and Intervention (The Python Predictive Visual)
This is the most critical and advanced component, elevating the dashboard from a reporting tool to a **proactive forecasting system**. Simply tracking who *has* dropped is retrospectivel this visual predicts who *will* drop, and why.
- **Goal:** Predict student attrition risks at the cohort level to deploy intervention services *before* a student makes the decision to leave.
- **Technical Implementation:** The visual is powered by a **Logistic Regression model** built using Python and `scikit-learn`, with the script embedded directly within Power BI. The model forecasts the `Predicted Drop Likelihood` base on key features: the `First_Time_Pass_Rate` (academic risk) and the `Pell_Status` (socioeconomic risk).
- **Strategic Value:** The resulting scatter plot helps leadership identify two crucial student groups:
  1. **Low-Performing Risk:** Students with low pass rates (expected high risk).
  2. **Hidden High-Risk:** Students with acceptable pass rates, but whose profile (e.g., Pell recipient status) still drives a high predicted risk. This pinpoints **equity gaps** where institutional barriers, not just academic ability, are forcign students out. The dashboard transforms into a triage tool for advising, tutoring, and financial support services.