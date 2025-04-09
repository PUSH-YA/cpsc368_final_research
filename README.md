# CPSC 368 Final Research


## Overview:

This research project investigates how socioeconomic and demographic factors influenced telehealth adoption patterns in the United States during the COVID-19 pandemic (2020-2022). 

Specifically, it examines **racial** and **ethnic disparities**, **geographic differences** between **privileged** and **underprivileged areas**, and the relationship between **educational attainment** and **telehealth usage**. 

By analyzing these factors, the study aims to quantify disparities, identify barriers to access for underserved communities, and contribute to evidence-based policy recommendations for equitable healthcare delivery. 
- The research also explores how telehealth expansion either mitigated or amplified existing healthcare inequities, with a focus on rural/urban classifications to better understand geographic disparities.

## File Descriptions

### Data files (Raw)
These are the files containing the raw data that was provided by the website
- **Access_and_Use_of_Telemedicine_During_COVID-19.csv**: The raw dataset detailing telemedicine usage during the COVID-19 pandemic.
- **TMEDTREND_PUBLIC_241126.csv**: A dataset containing public telemedicine trend data.

### Data files (Clean)
These are the files after the data cleaning was performed 
- **Access_and_telemedicine_use_COVID19_CLEAN.csv**: A cleaned dataset containing information on access and telemedicine use during COVID-19.
- **TIMETREND_PUBLIC_CLEAN.csv**: A cleaned dataset showing time trends in telemedicine usage.

### Code files 
- **data_extract_analysis.ipynb**: A Jupyter Notebook used for extracting data via SQL queries and performing hypothesis tests and creating EDA from the datasets.
- **data_cleaning_sql_upload.ipynb**: A Jupyter Notebook containing code for cleaning data and generating SQL script for uploading CSV data into Tables (includes code for generating the data too).
  - the data files are provided for both the `.ipynb` files above and should work with current directory structure. Informative comments are included in the file as well to ensure that their purpose and reasoning is specified clearly. Detailed explaination of the process will be present in the `Final report.pdf`
- **teleHealthData.sql**: An SQL script for creating and populating a database with telehealth data. (This is the file generated from `data_cleaning_sql_upload.ipynb`)

### Text files

- **Final report.pdf**: The final report summarizing the findings of the research project.
- **README.md**: This file, providing an overview of the project and its contents.