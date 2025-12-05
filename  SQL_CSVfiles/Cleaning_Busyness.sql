

CREATE OR REPLACE TABLE `hospital-performane-4448`.Queensland_health.busyness_clean AS
SELECT
  _id AS id,
  FacilityCode AS facility_code,
  DayOfWeekNo AS day_of_week,
  DayName AS day_name,
  DayNameLong AS day_name_long,
  TimeBandNumber AS time_band,
  DataValue AS data_value,
  DataUploadedTimestamp AS data_uploaded_timestamp
FROM
  `hospital-performane-4448`.Queensland_health.Busyness_raw;