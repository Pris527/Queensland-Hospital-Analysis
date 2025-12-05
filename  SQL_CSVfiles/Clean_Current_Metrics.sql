--- Clean current metrics table 

CREATE OR REPLACE TABLE `hospital-performane-4448.Queensland_health.current_metrics_clean` AS
SELECT
  _id AS Id,
  FacilityCode AS facility_code,
  DataUpdatedTimestamp AS data_uploaded_timestamp,
  Waiting AS waiting_count,
  `MedianWaitAllCAT` AS median_wait_all,
  `MedianWaitCAT45` AS median_wait_high_acuity,
  DataStatus AS data_status,
  FacilityDataDelayHours AS data_delay_hours
FROM hospital-performane-4448.Queensland_health.Current_metrics_raw
