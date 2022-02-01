-- name: ussi!
-- update the start station id based on latitude and longitude
UPDATE cyclistic
    SET start_station_id = temp_tbl.start_station_id_x
    from temp_tbl
    WHERE temp_tbl.start_lat = cyclistic.start_lat
    AND temp_tbl.start_lng = cyclistic.start_lng
    AND start_station_id IS NULL;

-- name: ussi2!
-- update the start station id based on start station name
UPDATE cyclistic
    SET start_station_id = temp_tbl.start_station_id_x
    from temp_tbl
    WHERE temp_tbl.start_station_name = cyclistic.start_station_name
    AND start_station_id IS NULL;

-- name: uesi!
-- update the end station id based on latitude and longitude
UPDATE cyclistic
    SET end_station_id = temp_tbl.end_station_id_x
    from temp_tbl
    WHERE temp_tbl.end_lat = cyclistic.end_lat
    AND temp_tbl.end_lng = cyclistic.end_lng
    AND end_station_id IS NULL;

-- name: uesi2!
-- update the end station id based on end station name
UPDATE cyclistic
    SET end_station_id = temp_tbl.end_station_id_x
    from temp_tbl
    WHERE temp_tbl.end_station_name = cyclistic.end_station_name
    AND end_station_id IS NULL;

-- name: ussn!
-- update the start station name based on start station id
UPDATE cyclistic
    SET start_station_name = temp_tbl.start_station_name_x
    from temp_tbl
    WHERE temp_tbl.start_station_id = cyclistic.start_station_id
    AND start_station_name IS NULL;

-- name: uesn!
-- update the end station name based on end station id
UPDATE cyclistic
    SET end_station_name = temp_tbl.end_station_name_x
    from temp_tbl
    WHERE temp_tbl.end_station_id = cyclistic.end_station_id
    AND end_station_name IS NULL;

-- name: uss!
-- update the start suburb name based on start location
UPDATE cyclistic
    SET start_suburb = reveresed_tbl.suburb
    from reveresed_tbl
    WHERE cyclistic.start_point = reveresed_tbl.point
    AND start_suburb IS NULL;
    
-- name: uss2!
-- update the start suburb name based on start station name
UPDATE cyclistic
    SET start_suburb = e.start_suburb
    from cyclistic as e
    WHERE cyclistic.start_station_name = e.start_station_name
    AND cyclistic.start_suburb IS NULL;
    
-- name: ues!
-- update the end suburb name based on end location
UPDATE cyclistic
    SET end_suburb = reveresed_tbl.suburb
    from reveresed_tbl
    WHERE cyclistic.end_point = reveresed_tbl.point
    AND end_suburb IS NULL;
    
-- name: ues2!
-- update the end suburb name based on end station name
UPDATE cyclistic
    SET end_suburb = e.end_suburb
    from cyclistic as e
    WHERE cyclistic.end_station_name = e.end_station_name
    AND cyclistic.end_suburb IS NULL;

-- name: copy_table_to_csv#
-- copy postgres table to csv file
COPY cyclistic TO '/tmp/cyclistic.csv' WITH (FORMAT CSV, HEADER);

-- name: copy_table_to_csv#
-- copy postgres table to csv file
COPY cyclistic TO '/tmp/cyclistic.csv' WITH (FORMAT CSV, HEADER);

-- name: copy_table_to_csv#
-- copy postgres table to csv file
COPY cyclistic TO '/tmp/cyclistic.csv' WITH (FORMAT CSV, HEADER);

-- name: copy_table_to_csv#
-- copy postgres table to csv file
COPY cyclistic TO '/tmp/cyclistic.csv' WITH (FORMAT CSV, HEADER);

-- name: copy_table_to_csv#
-- copy postgres table to csv file
COPY cyclistic TO '/tmp/cyclistic.csv' WITH (FORMAT CSV, HEADER);

-- name: copy_table_to_csv#
-- copy postgres table to csv file
COPY cyclistic TO '/tmp/cyclistic.csv' WITH (FORMAT CSV, HEADER);

-- name: copy_table_to_csv#
-- copy postgres table to csv file
COPY cyclistic TO '/tmp/cyclistic.csv' WITH (FORMAT CSV, HEADER);
