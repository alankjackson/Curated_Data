# Curated_Data
Set of runstreams to read in and clean up lots of various data

A catalog of data regarding Texas and Harris county that I have found



====================================================

Data from state agencies

-------------
TxDOT

https://gis-txdot.opendata.arcgis.com/datasets

County boundaries (csv and shapefile). Used for standard county names
and for FIPS code to County Name correspondence.

Names and such only:
/home/ajackson/Dropbox/Rprojects/Curated_Data_Files/Texas_Counties/County_Names.rds

Retrieved 27 Jun 2021

County_Names.rds : FIPS, County Name

Boundaries:





-------------
State Demographer

https://demographics.texas.gov/Data

Census-based datasets for population by various things

Retrieved: 25 Jun 2021

County_Age_Sex.rds : Population by county, age, and sex



---------------
Texas Health Department

https://healthdata.dshs.texas.gov/

Causes of death by county and year from 2006-2017. Multiple retrievals
in order to do imputation of values that are censored. Basically all values
less than 10 are censored.

Retrieved: 24 Jun 2021

Imputed_Deaths_by_County_Total.rds : County, Cause of death, # deaths, 
                                     imputed # deaths, county population
                              
          Years from 2006-2017  
          
Imputed_Deaths_by_County_by_year.rds : County, Cause of death, # deaths,
                                     imputed # deaths, county population, year
                            
----------------
Texas Department of Public Safety

https://www.dps.texas.gov/

Handgun Licensing data by year, county, and zipcode, from 1997 to 2020.

Retrieved in 2016 and June 30, 2021

Licenses_by_County_1997to2020.rds : Year, County, # applicants, %
Licenses_by_Zip_1997to2020.rds : Year, Zipcode, # applicants, %
                              




