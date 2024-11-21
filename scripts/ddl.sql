CREATE TABLE Dim_Experiment (
    experiment_id INT PRIMARY KEY,
    experiment_name VARCHAR(255),
    scientist_name VARCHAR(255),
    supplier VARCHAR(255), 
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

CREATE TABLE Dim_Process (
    process_id INT PRIMARY KEY,
    process_type VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    input_parameters VARIANT,
    output_parameters VARIANT
);

CREATE TABLE Dim_Equipment (
    equipment_id INT PRIMARY KEY,
    equipment_name VARCHAR(255),
    equipment_type VARCHAR(255),
    location VARCHAR(255) 
);

CREATE TABLE Dim_Sample (
    sample_id INT PRIMARY KEY,
    name VARCHAR(255), 
    collection_point VARCHAR(50),
    collection_time TIMESTAMP 
);

CREATE TABLE Dim_Instrument (
    instrument_id INT PRIMARY KEY,
    instrument_name VARCHAR(255),
    instrument_type VARCHAR(255),
    calibration_date DATE 
);

CREATE TABLE Dim_Time (
    time_key TIMESTAMP PRIMARY KEY,
    date DATE,
    year INT,
    quarter INT,
    month INT,
    day INT,
    hour INT,
    minute INT,
    second INT,
    day_of_week VARCHAR(50),
    week_of_year INT,
    is_weekend BOOLEAN
);

CREATE TABLE Fact_Analysis (
    analysis_id INT PRIMARY KEY,
    experiment_id INT, 
    process_id INT,
    sample_id INT,
    instrument_id INT,
    analysis_type VARCHAR(255),
    parameters VARIANT,
    result_data VARIANT,
    analysis_timestamp TIMESTAMP,
    experiment_start_time TIMESTAMP, 
    experiment_end_time TIMESTAMP, 
    process_start_time TIMESTAMP, 
    process_end_time TIMESTAMP, 
    sample_collection_time TIMESTAMP, 
    instrument_calibration_date DATE
);
