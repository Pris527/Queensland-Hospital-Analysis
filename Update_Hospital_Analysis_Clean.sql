--- Update Hospital Analysis

CREATE OR REPLACE TABLE `hospital-performane-4448.Queensland_health.hospital_analysis` AS
SELECT
  b.facility_code,
  f.facility_name,
  f.facility_name_short,
  f.first_nation_name,
  b.day_of_week,
  b.day_name,
  b.day_name_long,
  b.time_band,
  SAFE_CAST(b.data_value AS FLOAT64) AS busyness_score,
  SAFE_CAST(m.median_wait_all AS FLOAT64) AS wait_time_minutes,
  SAFE_CAST(m.median_wait_high_acuity AS FLOAT64) AS high_acuity_wait_minutes,
  SAFE_CAST(f.treatment_spaces AS INT64) AS treatment_spaces,
  f.facility_type,
  f.open_hours,
  f.open_days,
  f.alert_active,
  f.alert_message,
  SAFE_CAST(f.facility_latitude AS FLOAT64) AS latitude,
  SAFE_CAST(f.facility_longitude AS FLOAT64) AS longitude
FROM `Queensland_health.busyness_clean` b
LEFT JOIN `Queensland_health.current_metrics_clean` m
  ON CAST(b.facility_code AS STRING) = CAST(m.facility_code AS STRING)
RIGHT JOIN `Queensland_health.facility_clean` f
  ON CAST(b.facility_code AS STRING) = CAST(f.facility_code AS STRING);
