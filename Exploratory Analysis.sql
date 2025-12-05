--- Exploratory Analysis
--- Number of hospitals in the dataset

SELECT COUNT(DISTINCT facility_code) AS num_hospitals
FROM `hospital-performane-4448.Queensland_health.hospital_analysis` ; 

-- Busyness Score Distribution 
SELECT
  MIN(busyness_score) AS min_score,
  MAX(busyness_score) AS max_score,
  AVG(busyness_score) AS avg_score
FROM `hospital-performane-4448.Queensland_health.hospital_analysis`;

--- Hospital Ranking by busyness

SELECT
  facility_name,
  AVG(busyness_score) AS avg_busyness
FROM `Queensland_health.hospital_analysis`
GROUP BY facility_name
ORDER BY avg_busyness DESC
LIMIT 10;


--- Busy days  of the week 

SELECT
  day_name,
  AVG(busyness_score) AS avg_busyness
FROM `Queensland_health.hospital_analysis`
GROUP BY day_name
ORDER BY avg_busyness DESC;

--- busiest times of the week

SELECT
  time_band,
  AVG(busyness_score) AS avg_busyness
FROM `hospital-performane-4448.Queensland_health.hospital_analysis`
GROUP BY time_band
ORDER BY time_band;

--- wait time by busyness level

SELECT
  SAFE_CAST(busyness_score AS INT64) AS busyness_level,
  AVG(SAFE_CAST(median_wait_all AS FLOAT64)) AS avg_wait_time
FROM `hospital-performane-4448.Queensland_health.hospital_analysis`
WHERE SAFE_CAST(median_wait_all AS FLOAT64) IS NOT NULL
GROUP BY busyness_level
ORDER BY busyness_level DESC;

--- busiest times and days of the week 
SELECT
  day_name,
  time_band,
  AVG(SAFE_CAST(busyness_score AS FLOAT64)) AS avg_busyness
FROM `hospital-performane-4448.Queensland_health.hospital_analysis`
GROUP BY day_name, time_band
ORDER BY day_name, time_band;

--- Top hospitals with longest waits 

SELECT
  facility_name,
  AVG(SAFE_CAST(median_wait_all AS FLOAT64)) AS avg_wait_time_minutes
FROM `hospital-performane-4448.Queensland_health.hospital_analysis`
WHERE median_wait_all IS NOT NULL
GROUP BY facility_name
ORDER BY avg_wait_time_minutes DESC
LIMIT 10;

--- wait time vs hospital capacity 

SELECT
  facility_name,
  treatment_spaces,
  AVG(SAFE_CAST(median_wait_all AS FLOAT64)) AS avg_wait_time_minutes
FROM `Queensland_health.hospital_analysis`
WHERE
  treatment_spaces IS NOT NULL
  AND SAFE_CAST(median_wait_all AS FLOAT64) IS NOT NULL
GROUP BY facility_name, treatment_spaces
ORDER BY avg_wait_time_minutes DESC;

-- unknown facilities indicating performance issue

SELECT
  IFNULL(facility_name, CONCAT("Unknown Facility (", facility_code, ")")) AS facility_name,
  treatment_spaces,
  AVG(SAFE_CAST(median_wait_all AS FLOAT64)) AS avg_wait_time_minutes
FROM `hospital-performane-4448.Queensland_health.hospital_analysis`
WHERE treatment_spaces IS NOT NULL
GROUP BY facility_name, facility_code, treatment_spaces
ORDER BY avg_wait_time_minutes DESC;






