--Create a new postgres user named indexed_cars_user
CREATE ROLE indexed_cars_user WITH SUPERUSER;

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
SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

--Run a query to list all model_title values where the make_code is 'NISSAN', and the model_code is 'GT-R' without any duplicate rows,
--and note the time somewhere. (should have 1 result)
SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

--Run a query to list all make_code, model_code, model_title, and year from car_models where the make_code is 'LAM',
--and note the time somewhere. (should have 1360 rows)
SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';

--Run a query to list all fields from all car_models in years between 2010 and 2015, and note the time somewhere (should have 78840 rows)
SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;

--Run a query to list all fields from all car_models in the year of 2010, and note the time somewhere (should have 13140 rows)
SELECT * FROM car_models WHERE year = 2010;

--Create indexes on the columns that would improve query performance.
CREATE INDEX car_models_index ON car_models (make_title);

--Create a query to get a list of all make_title values from the car_models table where the make_code is 'LAM',
--without any duplicate rows, and note the time somewhere. (should have 1 result)
SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

--Create a query to list all model_title values where the make_code is 'NISSAN', and the model_code is 'GT-R' without any duplicate rows,
--and note the time somewhere. (should have 1 result)
SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

--Create a query to list all make_code, model_code, model_title, and year from car_models where the make_code is 'LAM',
--and note the time somewhere. (should have 1360 rows)
SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';

--Create a query to list all fields from all car_models in years between 2010 and 2015, and note the time somewhere (should have 78840 rows)
SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;

--Create a query to list all fields from all car_models in the year of 2010, and note the time somewhere (should have 13140 rows)
SELECT * FROM car_models WHERE year = 2010;

--Why are queries #4 and #5 not running faster?
--4 and 5 are running faster because we're getting everything from the db.

--Add your recorded indexing statements to the scripts/car_models.sql


/*--Delete the car_models table
DROP TABLE car_models;

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
*/