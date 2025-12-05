---clean facility table

CREATE OR REPLACE TABLE `hospital-performane-4448.Queensland_health.facility_clean` AS
SELECT
  _id,
  FacilityCode AS facility_code,
  FacilityName AS facility_name,
  FacilityNameShort AS facility_name_short,
  FacilityFirstNationName AS first_nation_name,
  FacilityLatitude AS facility_latitude,
  Facilitytype AS facility_type,
  NumberofTreatmentSpaces AS treatment_spaces,
  OpenHours AS open_hours,
  OpenDays AS open_days,
  WebUrl AS web_url,
  CustomAlertActive AS alert_active,
  CustomAlertMessage AS alert_message,
  DataUploadedTimestamp AS data_uploaded_timestamp
FROM hospital-performane-4448.Queensland_health.Facilities_Raw
