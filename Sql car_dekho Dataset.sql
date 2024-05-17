create schema cars;
use cars;
-- Read Data--
select*from car_dekho;
-- Total count: To get a count of total records--
select count(*) from car_dekho;
-- How many cars will be available in 2023?
select count(*) from car_dekho where year = 2023;
-- How many cars are available in 2020,2021,2022?
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- Total of all cars by year--
select year, count(*) from car_dekho group by year;
-- How many diesel car will be there in 2020?
select count(*) from car_dekho where year = 2020 and fuel = "diesel" ;
-- How many petrol car will be there in 2020?
select count(*) from car_dekho where year = 2020 and fuel = "petrol" ;
-- All the fuel cars (petrol, diesel, and CNG) come by all year--
select year, count(*) from car_dekho where fuel = "petrol" group by year;
select year, count(*) from car_dekho where fuel = "diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;
-- Which year had more than 100 cars--
select year, count(*) from car_dekho group by year having count(*)>100; 
-- All car count details between 2015 to 2023--
select count(*) from car_dekho where year between 2015 and 2023;
-- All car details between 2015 to 2023--
select*from car_dekho where year between 2015 and 2023; 
