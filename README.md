# Uber Operations Analysis Project

# Overview
This project is a simple SQL-based analysis of ride activity patterns. It explores how demand changes across different zones and times, and how driver availability affects waiting times.

The goal was to practice basic data analysis using SQL and simulate real-world operations thinking similar to what is done in mobility platforms.

---

# Dataset
The dataset contains simulated ride request data with the following fields:
- ride_id
- zone (CBD, Residential, University, Shopping)
- request_time
- day_type (Weekday/Weekend)
- demand_level (High, Medium, Low)
- driver_availability (High, Medium, Low)
- estimated_wait_time

---

# Tools Used
- SQLite
- SQL (Joins, Aggregations, CASE statements)
- DB Browser for SQLite

---

 Key Analysis Performed

 1. Demand by Zone
Checked which areas have the highest number of ride requests.

 2. Time-Based Demand
Grouped ride requests into time periods (Morning, Midday, Evening, Night) to identify peak hours.

 3. Supply vs Demand
Compared demand levels with driver availability to identify potential shortages.

 4. Wait Time Analysis
Calculated average wait times per zone to understand service efficiency.

---

# Key Insights
- Demand is highest during morning and evening peak hours.
- CBD and Residential areas show the most consistent demand.
- Higher demand periods often show lower driver availability.
- Zones with higher demand generally have higher wait times.

---

# What I Learned
This project helped me understand how raw data can be transformed into meaningful operational insights using SQL. It also improved my ability to think in terms of supply and demand, which is important in real-world data and operations roles.

---

# Notes
This is a learning project built to practice SQL and data analysis fundamentals.
