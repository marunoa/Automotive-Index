--Create a new postgres user named indexed_cars_user
CREATE USER "indexed_cars_user";

--Create a new database named indexed_cars owned by indexed_cars_user
CREATE DATABASE "indexed_cars";

--Connect to the newly created database
\c indexed_cars;

--Run the provided scripts/car_models.sql script on the indexed_cars database
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_models.sql;

--Run the provided scripts/car_model_data.sql script on the indexed_cars database 10 times
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;

--Run a query to get a list of all make_title values from the car_models table where the make_code is 'LAM',
--without any duplicate rows, and note the time somewhere. (should have 1 result)
SELECT DISTINCT make_title FROM "car_models" WHERE make_code = 'LAM';
--TIME: 128.784 ms

--Run a query to list all model_title values where the make_code is 'NISSAN', and the model_code is 'GT-R' without any duplicate rows,
--and note the time somewhere. (should have 1 result)
SELECT DISTINCT model_title FROM "car_models" WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--TIME: 97.195 ms

--Run a query to list all make_code, model_code, model_title, and year from car_models where the make_code is 'LAM',
--and note the time somewhere. (should have 1360 rows)
SELECT make_code, model_code, model_title, year FROM "car_models" WHERE make_code = 'LAM';
--TIME: 69.188 ms

--Run a query to list all fields from all car_models in years between 2010 and 2015, and note the time somewhere (should have 78840 rows)
SELECT * FROM "car_models" WHERE year BETWEEN 2010 AND 2015;
--TIME: 222.231 ms

--Run a query to list all fields from all car_models in the year of 2010, and note the time somewhere (should have 13140 rows)
SELECT * FROM "car_models" WHERE year = 2010;
--TIME: 101.346

--Create indexes on the columns that would improve query performance.
CREATE INDEX "car_models_index" ON "car_models" (make_title);

--Create a query to get a list of all make_title values from the car_models table where the make_code is 'LAM',
--without any duplicate rows, and note the time somewhere. (should have 1 result)
SELECT DISTINCT make_title FROM "car_models" WHERE make_code = 'LAM';
--TIME: 72.979 ms

--Create a query to list all model_title values where the make_code is 'NISSAN', and the model_code is 'GT-R' without any duplicate rows,
--and note the time somewhere. (should have 1 result)
SELECT DISTINCT model_title FROM "car_models" WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--TIME: 70.374 ms

--Create a query to list all make_code, model_code, model_title, and year from car_models where the make_code is 'LAM',
--and note the time somewhere. (should have 1360 rows)
SELECT make_code, model_code, model_title, year FROM "car_models" WHERE make_code = 'LAM';
-- TIME: 69.447 ms

--Create a query to list all fields from all car_models in years between 2010 and 2015, and note the time somewhere (should have 78840 rows)
SELECT * FROM "car_models" WHERE year BETWEEN 2010 AND 2015;
--TIME: 221.763 ms

--Create a query to list all fields from all car_models in the year of 2010, and note the time somewhere (should have 13140 rows)
SELECT * FROM "car_models" WHERE year = 2010;
--TIME: 101.345 ms

--Add your recorded indexing statements to the scripts/car_models.sql


--Delete the car_models table
DROP TABLE "car_models";

--Run the provided scripts/car_models.sql script on the indexed_cars database
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_models.sql;

--Run the provided scripts/car_model_data.sql script on the indexed_cars database 10 times
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
\i ~/Users/Spekter/cohort11/old/Automotive-Index/scripts/car_model_data.sql;
