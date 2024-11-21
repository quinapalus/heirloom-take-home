SELECT
    f.process_id,
    d.process_type,
    f.sample_id,
    f.result_data['carbon_percentage'] AS carbon_content,
    f.process_start_time,
    f.process_end_time
FROM
    Fact_Analysis f
JOIN
    Dim_Process d ON f.process_id = d.process_id
WHERE
    f.analysis_type = 'carbon_content'
ORDER BY
    f.process_start_time;
