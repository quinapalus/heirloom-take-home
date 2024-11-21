SELECT
    f.instrument_id,
    d.instrument_name,
    f.instrument_calibration_date,
    f.analysis_timestamp,
    f.analysis_timestamp::date - f.instrument_calibration_date as days_since_calibration,
    days_since_calibration < 4 as instrument_is_trustworthy
FROM
    Fact_Analysis f
JOIN
    Dim_Instrument d ON f.instrument_id = d.instrument_id
