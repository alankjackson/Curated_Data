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
                              
                            
----------------
HCAD - Harris County Appraisal District

https://hcad.org/pdata/

Real Property Data:
real_neighborhood_code.txt : cd	grp_cd	dscr
real_acct.txt : acct	yr	mailto	mail_addr_1	mail_addr_2	mail_city	mail_state	mail_zip	mail_country	undeliverable	str_pfx	str_num	str_num_sfx	str	str_sfx	str_sfx_dir	str_unit site_addr_1	site_addr_2	site_addr_3	state_class	school_dist	map_facet	key_map	Neighborhood_Code	Neighborhood_Grp	Market_Area_1	Market_Area_1_Dscr	Market_Area_2	Market_Area_2_Dscr	econ_area	econ_bld_class	center_code	yr_impr yr_annexed	splt_dt	dsc_cd	nxt_bld	bld_ar	land_ar	acreage	Cap_acct	shared_cad	land_val	bld_val	x_features_val	ag_val	assessed_val	tot_appr_val	tot_mkt_val	prior_land_val	prior_bld_val	prior_x_features_val	prior_ag_val	prior_tot_appr_val prior_tot_mkt_val	new_construction_val	tot_rcn_val	value_status	noticed	notice_dt	protested	certified_date	rev_dt	rev_by	new_own_dt	lgl_1	lgl_2	lgl_3	lgl_4	jurs

permits.txt : acct	id	agency_id	status	dscr	dor_cd	permit_type	permit_tp_descr	property_tp	issue_date	yr	site_num	site_pfx	site_str	site_tp	site_sfx	site_apt 
parcel_tieback.txt : acct	tp	dscr	related_acct	pct
owners.txt : acct	ln_num	name	aka	pct_own
deeds.txt : acct	dos	clerk_yr	clerk_id	deed_id

Retrieved July 5, 2021 for 2005-2020
Retrieved March 21, 2022 to add 2021 data.

Datasets are named Values_xxxx.rds where xxxx = year from 1995 to 2021
Variables in datasets are:
"acct", "yr", "state_class", "site_addr_1", "site_addr_2", 
"site_addr_3", "bld_ar", "land_ar", "land_val", "bld_val", 
"assessed_val", "tot_appr_val", "tot_mkt_val", "new_own_dt"

Areas are in square feet.

---------------------------
Texas Trauma Service Areas

http://txrules.elaws.us/rule/title25_chapter157_sec.157.122

Counties_per_area.tsv : area_code, area_name, county list

Trauma_Service_Areas.rds : Area_code, Area_name, County

---------------------------
Texas MSA regions

The data comes from the Texas center for Health Statistics, the state
health department.

https://www.dshs.state.tx.us/regions/default.shtm

Original file PHR_MSA_County_masterlist.xlsx has:
 County Name 	FIPS #	 County # 	Public Health Region (11)
 Health Service Region (8)	Metropolitan Statistical Area (MSA)
 Metropolitan Divisions (MD)	Metro Area (82)
 NCHS Urban Rural Classification (2006)	NCHS Urban Rural Classification (2013)
 Border 32 (La Paz Agreement)	Border 15
 
Counties_in_each_MSA.rds : For each MSA, population and a list of counties
MSA_for_each_county.rds : For each county, MSA, FIPS, Pub Health Region

---------------------------
Elevation data from USGS

https://apps.nationalmap.gov/downloader/#/

Data is an IMG file of a 1/9 arcsecond DEM (approx 3 meters)

---------------------------
Permit data for the city of Houston

https://www.houstontx.gov/planning/DevelopRegs/dev_reports.html

Weekly data files from 2017 forward. Stored as tables in a docx file.

---------------------------
Address points (lat-longs for street addresses) City of Houston

https://cohgis-mycity.opendata.arcgis.com/search?q=address

CSV file of location and address

Download on 28 Mar 2022

---------------------------
Address points for street addresses, city of Houston

gdb file of locations and addresses

Download from https://mycity.maps.arcgis.com/home/item.html?id=aeb4bb6b3b25471caf4d883bf979424d

accessed via https://cohgis-mycity.opendata.arcgis.com/

Download Sept 27, 2024

---------------------------
Pollen and Mold count data for City of Houston

https://www.houstontx.gov/health/Pollen-Mold/pollen-archives.html

Monthly Excel spreadsheets starting in December 2013

Daily for current month requires webscraping

Download 7 April 2022

---------------------------
Permit data from the city of Houston

https://www.houstontx.gov/planning/DevelopRegs/dev_reports.html

Weekly docx files with a table in each file

Download 8 April 2022

A geocoded and cleaned up file has been produced
-----------------------------
HFD incidents

https://cohweb.houstontx.gov/ActiveIncidents/Combined.aspx?agency=%

Download every hour at 5 after the hour

Begun May 6, 2022
-------------------------------
Floodplains

https://gishub-h-gac.hub.arcgis.com/datasets/H-GAC::fema-floodplains-nfhl-2015/explore?location=29.722571%2C-95.293407%2C11.20

Shapefile

Download May 7, 2022
-------------------------------
Neighborhoods

Downloaded from wikimapia May 7, 2022

Polygons and labels
-------------------------------
Neighborhoods

COH Super Neighborhoods

https://cohgis-mycity.opendata.arcgis.com/datasets/deae15e7f3db4b198946c17f0d169c39/explore?location=29.721674%2C-95.357101%2C10.99

Downloaded May 8, 2022

-------------------------------
City boundaries in Harris county

https://www.kinderudp.org/#/datasetCatalog/3xmql87o2y1v 

Downloaded May 8, 2022

in Neighborhoods/City_polys.rds

-------------------------------
Voting precincts in Harris County

https://cohgis-mycity.opendata.arcgis.com/datasets/17b4595d76e64b01aebce51e4340b858/explore?location=29.838977%2C-95.436800%2C10.59

Downloaded May 8, 2022

-------------------------------
Texas votes by county in the 2020 presidential election

Downloaded from secretary of state website


-------------------------------
Mortality data from CDC

Using CDC Wonder, download provisional mortality data for Texas by county
and month for January 2018 - April 15 2022. 

https://wonder.cdc.gov/

Downloaded May 21, 2022.

-------------------------------
Pollution data from EPA

Can download PM2.5, Ozone, and others

https://www.epa.gov/outdoor-air-quality-data/download-daily-data

Pending....

-------------------------------
ZCTA polygons

These are available from many sources. I have used 2, the census bureau and
the city of Houston.

The census bureau is nice and well-documented, but you have to download the 
entire 1/2 Gb file, which is painful. But you get to pick which year file
you get.

https://www.census.gov/cgi-bin/geo/shapefiles/index.php

https://cohgis-mycity.opendata.arcgis.com/datasets/coh-zipcode/explore?location=29.761150%2C-95.394800%2C9.16

I have the 2020 zcta from census, and an earlier rendition from CoH.

-------------------------------
Various census data attached to various polygons

From the census downloaded Pop, Pop by Race, Aggregate income,
Age distribution numbers by sex, and where born & citizenship

These are attached to natively Block, Block-groups, or Tracts as the 
case may be.

These are attached to ZCTA areas in Harris county in 
Census_data_by_ZCTA_2020.rds

-------------------------------
County boundaries

downloaded 11/4/2022
https://gishub-h-gac.hub.arcgis.com/datasets/H-GAC::hgac-counties-political

City_and_County_bdys/HGAC_County_bdys.rds

-------------------------------
Texas Flood Planning Regions

downloaded 11/4/2023
https://www.arcgis.com/home/item.html?id=177ba83b8e1a405692ba8886110df08f

FloodPlanningRegions/Regional_Flood_Planning_Groups.Rds

-------------------------------
Texas Regional Water Planning Areas

downloaded 11/4/2023
https://www.twdb.texas.gov/mapping/gisdata.asp

Water_Planning_Areas.Rds

-------------------------------
Population by zipcode in Texas

downloaded excel file from https://www.texas-demographics.com/zip_codes_by_population
which has pop figures for 2022

Zipcode_Pop_2022.rds

-------------------------------
Union of Concerned Scientists Chronic Inundation data
https://www.ucsusa.org/resources/underwater

Spreadsheet of zipcodes and scenarios for chronic inundation

SeaLevel/UCS_data.rds
SeaLevel/UCS_sfdata.rds (with ZCTA polygons attached)

-------------------------------
Crosswalk file ZCTA to blocks - with intersecting groups and tracts
https://www.census.gov/geographies/reference-files/time-series/geo/relationship-files.2020.html

Census_Crosswalks/Raw_ZCTA_to_TabBlock.rds
Census_Crosswalks/ZCTA_to_TabBlock.rds

-------------------------------
Redlining
Data downloaded Jan 2025 from 
https://dsl.richmond.edu/panorama/redlining/data

-------------------------------
Create files for each state of census tract geometries and population
CensusTractGeom.qmd






