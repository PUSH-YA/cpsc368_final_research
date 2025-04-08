
DROP TABLE telemedicineprovider PURGE;
DROP TABLE beneficiarydata PURGE;

-- Create table for BeneficiaryData data
CREATE TABLE beneficiarydata (
  race VARCHAR(255),
  urbanization VARCHAR(255),
  enrollment_status VARCHAR(255),
  total_bene_th_elig FLOAT,
  total_partb_enrl FLOAT,
  total_bene_telehealth FLOAT,
  pct_telehealth FLOAT,
  PRIMARY KEY (
    race, urbanization
  )
);

-- Create table for TelemedicineProvider data
CREATE TABLE telemedicineprovider (
  round INT,
  indicator VARCHAR(255),
  race VARCHAR(255),
  urbanization VARCHAR(255),
  education VARCHAR(255),
  samplesize FLOAT,
  sizevalue FLOAT,
  percent_do_not_know FLOAT,
  percent_no FLOAT,
  percent_no_telemedicine_available FLOAT,
  percent_no_usual_place_of_care FLOAT,
  percent_yes FLOAT,
  standarderror_do_not_know FLOAT,
  standarderror_no FLOAT,
  standarderror_no_telemedicine_available FLOAT,
  standarderror_no_usual_place_of_care FLOAT,
  standarderror_yes FLOAT,
  PRIMARY KEY (round, indicator, race, urbanization, education),
  FOREIGN KEY (race, urbanization) REFERENCES beneficiarydata(race, urbanization));

-- SQL Script for Bulk Insert into Oracle DB

INSERT ALL
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('American Indian/Alaska Native', 'Rural', 'All', 1080899.0, 1368005.833327, 292171.0, 0.25866)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('American Indian/Alaska Native', 'Unknown', 'All', 0.0, 0.0, 0.0, NULL)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('American Indian/Alaska Native', 'Urban', 'All', 821659.0, 1041482.5, 254013.0, 0.29846)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Asian/Pacific Islander', 'Rural', 'All', 482038.0, 688475.416665, 102453.0, 0.2064266666666666)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Asian/Pacific Islander', 'Unknown', 'All', 0.0, 0.0, 0.0, NULL)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Asian/Pacific Islander', 'Urban', 'All', 9880074.0, 13576697.08334, 3113930.0, 0.3095)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Black non-Hispanic', 'Rural', 'All', 3924002.0, 4951174.58332, 794273.0, 0.18976)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Black non-Hispanic', 'Unknown', 'All', 0.0, 0.0, 0.0, NULL)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Black non-Hispanic', 'Urban', 'All', 25001399.0, 32576185.4167, 7154655.0, 0.2755466666666667)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Hispanic', 'Rural', 'All', 2494867.0, 3514172.08332, 661061.0, 0.2560266666666667)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Hispanic', 'Unknown', 'All', 0.0, 0.0, 0.0, NULL)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Hispanic', 'Urban', 'All', 17316518.0, 24322129.5833, 5645995.0, 0.3169933333333333)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('White non-Hispanic', 'Rural', 'All', 73337370.0, 93597279.9999, 14235356.0, 0.1872666666666666)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('White non-Hispanic', 'Unknown', 'All', 0.0, 0.0, 0.0, NULL)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('White non-Hispanic', 'Urban', 'All', 221983531.0, 272046297.5, 56130051.0, 0.2465666666666666)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Other non-Hispanic', 'Rural', 'All', 0.0, 0.0, 0.0, NULL)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Other non-Hispanic', 'Unknown', 'All', 0.0, 0.0, 0.0, NULL)
    INTO beneficiarydata (race, urbanization, enrollment_status, total_bene_th_elig, total_partb_enrl, total_bene_telehealth, pct_telehealth)
    VALUES ('Other non-Hispanic', 'Urban', 'All', 0.0, 0.0, 0.0, NULL)
SELECT 1 FROM DUAL;
INSERT ALL
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Unknown', 'bachelor or above', NULL, NULL, 14.7, 60.8, NULL, 9.0, 15.5, 0.8, 0.9, NULL, 0.6, 0.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Unknown', 'college', NULL, NULL, 13.5, 62.4, NULL, 10.3, 13.8, 0.8, 1.3, NULL, 0.7, 1.0)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Unknown', 'highschool or less', NULL, NULL, 10.8, 61.8, NULL, 14.2, 13.2, 1.1, 1.4, NULL, 1.6, 1.0)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offered telemedicine prior to pandemic', 'Black non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, 8.3, 60.7, NULL, 13.0, 18.0, 1.2, 2.4, NULL, 2.2, 1.3)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offered telemedicine prior to pandemic', 'Hispanic', 'Unknown', 'Unknown', NULL, NULL, 12.1, 56.0, NULL, 17.9, 13.9, 1.4, 3.0, NULL, 2.6, 1.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offered telemedicine prior to pandemic', 'White non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, 13.9, 63.9, NULL, 9.1, 13.0, 0.6, 0.7, NULL, 0.7, 0.5)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Rural', 'Unknown', NULL, NULL, 11.9, 69.2, NULL, 7.2, 11.6, 1.6, 2.7, NULL, 1.7, 1.4)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Urban', 'Unknown', NULL, NULL, 13.0, 60.7, NULL, 11.8, 14.5, 0.5, 0.6, NULL, 0.7, 0.5)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offers telemedicine', 'Other non-Hispanic', 'Unknown', 'bachelor or above', NULL, NULL, 5.3, 46.3, NULL, 8.9, 39.5, 0.5, 1.2, NULL, 0.6, 1.0)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offers telemedicine', 'Other non-Hispanic', 'Unknown', 'college', NULL, NULL, 5.2, 49.0, NULL, 10.3, 35.4, 0.6, 1.2, NULL, 0.7, 1.5)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offers telemedicine', 'Other non-Hispanic', 'Unknown', 'highschool or less', NULL, NULL, 5.1, 45.7, NULL, 14.2, 35.0, 0.9, 1.5, NULL, 1.6, 1.6)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offers telemedicine', 'Black non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, 5.8, 42.9, NULL, 12.9, 38.5, 0.7, 2.1, NULL, 2.2, 2.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offers telemedicine', 'Hispanic', 'Unknown', 'Unknown', NULL, NULL, 5.2, 43.5, NULL, 17.9, 33.4, 1.0, 2.9, NULL, 2.6, 2.0)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offers telemedicine', 'White non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, 4.8, 48.7, NULL, 9.1, 37.4, 0.5, 1.3, NULL, 0.7, 1.3)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offers telemedicine', 'Other non-Hispanic', 'Rural', 'Unknown', NULL, NULL, 4.8, 52.2, NULL, 7.2, 35.7, 1.1, 2.5, NULL, 1.7, 2.3)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Provider offers telemedicine', 'Other non-Hispanic', 'Urban', 'Unknown', NULL, NULL, 5.3, 46.2, NULL, 11.8, 36.7, 0.5, 0.9, NULL, 0.7, 0.9)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Unknown', 'bachelor or above', NULL, NULL, NULL, 19.3, 55.3, NULL, 25.5, NULL, 0.8, 1.0, NULL, 1.1)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Unknown', 'college', NULL, NULL, NULL, 16.3, 59.5, NULL, 24.2, NULL, 0.8, 1.5, NULL, 1.1)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Unknown', 'highschool or less', NULL, NULL, NULL, 16.3, 60.5, NULL, 23.1, NULL, 1.6, 1.5, NULL, 1.4)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Scheduled one or more telemedicine appointments', 'Black non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 16.0, 56.6, NULL, 27.4, NULL, 1.3, 2.7, NULL, 2.2)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Scheduled one or more telemedicine appointments', 'Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 16.1, 62.0, NULL, 21.9, NULL, 1.8, 2.3, NULL, 1.8)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Scheduled one or more telemedicine appointments', 'White non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 17.4, 57.9, NULL, 24.7, NULL, 0.8, 1.3, NULL, 1.3)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Rural', 'Unknown', NULL, NULL, NULL, 17.8, 59.6, NULL, 22.6, NULL, 2.1, 2.5, NULL, 1.4)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (1, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Urban', 'Unknown', NULL, NULL, NULL, 17.3, 58.3, NULL, 24.4, NULL, 0.7, 0.8, NULL, 0.9)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Unknown', 'bachelor or above', NULL, NULL, 15.0, 62.3, NULL, 8.4, 14.3, 0.7, 1.0, NULL, 0.6, 0.8)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Unknown', 'college', NULL, NULL, 13.9, 62.5, NULL, 8.7, 14.8, 1.2, 1.2, NULL, 0.8, 1.1)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Unknown', 'highschool or less', NULL, NULL, 12.6, 62.9, NULL, 11.2, 13.3, 1.3, 1.8, NULL, 1.4, 1.4)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offered telemedicine prior to pandemic', 'Black non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, 8.1, 64.3, NULL, 9.5, 18.1, 1.3, 2.0, NULL, 1.7, 1.8)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offered telemedicine prior to pandemic', 'Hispanic', 'Unknown', 'Unknown', NULL, NULL, 13.9, 54.1, NULL, 15.0, 17.0, 3.1, 3.5, NULL, 1.9, 2.6)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offered telemedicine prior to pandemic', 'White non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, 15.0, 64.6, NULL, 8.0, 12.4, 0.8, 1.1, NULL, 0.8, 0.6)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Rural', 'Unknown', NULL, NULL, 14.5, 68.3, NULL, 7.8, 9.4, 2.6, 3.1, NULL, 1.8, 0.9)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Urban', 'Unknown', NULL, NULL, 13.7, 61.9, NULL, 9.7, 14.7, 0.7, 0.9, NULL, 0.6, 0.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offers telemedicine', 'Other non-Hispanic', 'Unknown', 'bachelor or above', NULL, NULL, 6.2, 44.6, NULL, 8.4, 40.8, 0.7, 1.3, NULL, 0.6, 1.3)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offers telemedicine', 'Other non-Hispanic', 'Unknown', 'college', NULL, NULL, 5.1, 48.6, NULL, 8.7, 37.6, 0.8, 1.2, NULL, 0.8, 1.1)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offers telemedicine', 'Other non-Hispanic', 'Unknown', 'highschool or less', NULL, NULL, 4.9, 50.6, NULL, 11.2, 33.3, 0.8, 1.7, NULL, 1.4, 1.4)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offers telemedicine', 'Black non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, 3.4, 47.2, NULL, 9.5, 40.0, 0.9, 2.2, NULL, 1.7, 1.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offers telemedicine', 'Hispanic', 'Unknown', 'Unknown', NULL, NULL, 8.3, 43.6, NULL, 15.0, 33.1, 1.2, 2.6, NULL, 1.9, 2.8)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offers telemedicine', 'White non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, 4.8, 49.3, NULL, 8.0, 37.9, 0.5, 1.4, NULL, 0.8, 1.3)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offers telemedicine', 'Other non-Hispanic', 'Rural', 'Unknown', NULL, NULL, NULL, 57.0, NULL, 7.8, 30.3, NULL, 3.6, NULL, 1.8, 2.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Provider offers telemedicine', 'Other non-Hispanic', 'Urban', 'Unknown', NULL, NULL, 5.5, 46.9, NULL, 9.7, 38.0, 0.4, 0.8, NULL, 0.6, 0.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Unknown', 'bachelor or above', NULL, NULL, NULL, 21.3, 53.1, NULL, 25.5, NULL, 0.9, 1.3, NULL, 1.0)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Unknown', 'college', NULL, NULL, NULL, 16.4, 57.8, NULL, 25.8, NULL, 0.9, 1.1, NULL, 1.1)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Unknown', 'highschool or less', NULL, NULL, NULL, 15.9, 62.2, NULL, 21.9, NULL, 1.3, 1.7, NULL, 1.5)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Scheduled one or more telemedicine appointments', 'Black non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 14.0, 57.1, NULL, 28.9, NULL, 1.6, 1.8, NULL, 1.8)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Scheduled one or more telemedicine appointments', 'Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 18.9, 59.2, NULL, 21.9, NULL, 1.9, 3.0, NULL, 2.5)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Scheduled one or more telemedicine appointments', 'White non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 18.2, 57.6, NULL, 24.2, NULL, 0.9, 1.3, NULL, 1.0)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Rural', 'Unknown', NULL, NULL, NULL, 16.5, 64.8, NULL, 18.7, NULL, 1.8, 3.0, NULL, 2.1)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (2, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Urban', 'Unknown', NULL, NULL, NULL, 18.1, 56.9, NULL, 25.0, NULL, 0.8, 0.8, NULL, 0.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Unknown', 'bachelor or above', NULL, NULL, 10.4, 53.4, NULL, 18.0, 18.2, 1.5, 3.6, NULL, 2.5, 2.5)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Unknown', 'college', NULL, NULL, 7.2, 49.7, NULL, 20.4, 22.7, 1.4, 3.1, NULL, 2.3, 2.6)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Unknown', 'highschool or less', NULL, NULL, NULL, 43.1, NULL, 32.1, 17.6, NULL, 4.1, NULL, 4.0, 3.0)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offered telemedicine prior to pandemic', 'Black non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 43.2, NULL, 30.0, 22.1, NULL, 5.1, NULL, 5.4, 4.3)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offered telemedicine prior to pandemic', 'Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 40.7, NULL, 34.1, 16.6, NULL, 5.4, NULL, 5.3, 4.5)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offered telemedicine prior to pandemic', 'White non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, 8.7, 53.0, NULL, 18.9, 19.5, 1.8, 3.0, NULL, 2.4, 2.0)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Rural', 'Unknown', NULL, NULL, NULL, 45.6, NULL, 26.5, 24.8, NULL, 5.4, NULL, 6.9, 4.2)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offered telemedicine prior to pandemic', 'Other non-Hispanic', 'Urban', 'Unknown', NULL, NULL, 8.7, 48.4, NULL, 24.1, 18.8, 1.5, 2.2, NULL, 1.9, 1.8)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offers telemedicine', 'Other non-Hispanic', 'Unknown', 'bachelor or above', NULL, NULL, 4.3, 56.0, NULL, 7.2, 32.6, 1.2, 1.8, NULL, 1.0, 2.0)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offers telemedicine', 'Other non-Hispanic', 'Unknown', 'college', NULL, NULL, 3.8, 53.6, NULL, 8.7, 33.9, 0.7, 1.7, NULL, 1.1, 1.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offers telemedicine', 'Other non-Hispanic', 'Unknown', 'highschool or less', NULL, NULL, NULL, 53.1, NULL, 13.8, 29.3, NULL, 2.6, NULL, 1.9, 2.6)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offers telemedicine', 'Black non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 45.5, NULL, 14.9, 34.9, NULL, 3.3, NULL, 3.0, 3.3)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offers telemedicine', 'Hispanic', 'Unknown', 'Unknown', NULL, NULL, 7.6, 45.4, NULL, 15.9, 31.1, 2.0, 3.6, NULL, 3.1, 2.8)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offers telemedicine', 'White non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, 2.9, 57.5, NULL, 7.5, 32.2, 0.5, 1.4, NULL, 1.0, 1.5)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offers telemedicine', 'Other non-Hispanic', 'Rural', 'Unknown', NULL, NULL, NULL, 65.8, NULL, 8.3, 23.0, NULL, 2.9, NULL, 2.4, 3.0)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Provider offers telemedicine', 'Other non-Hispanic', 'Urban', 'Unknown', NULL, NULL, 4.1, 52.0, NULL, 10.5, 33.3, 0.7, 1.3, NULL, 1.0, 1.2)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Unknown', 'bachelor or above', NULL, NULL, NULL, 15.9, 66.0, NULL, 18.1, NULL, 1.5, 2.0, NULL, 1.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Unknown', 'college', NULL, NULL, NULL, 15.4, 65.0, NULL, 19.6, NULL, 1.3, 1.7, NULL, 1.4)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Unknown', 'highschool or less', NULL, NULL, NULL, 15.0, 70.1, NULL, 14.8, NULL, 1.8, 2.6, NULL, 2.1)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Scheduled one or more telemedicine appointments', 'Black non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 13.6, 64.6, NULL, 21.7, NULL, 2.0, 3.4, NULL, 3.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Scheduled one or more telemedicine appointments', 'Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 16.4, 66.7, NULL, 17.0, NULL, 2.8, 2.9, NULL, 2.3)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Scheduled one or more telemedicine appointments', 'White non-Hispanic', 'Unknown', 'Unknown', NULL, NULL, NULL, 16.0, 67.0, NULL, 17.0, NULL, 1.2, 1.5, NULL, 1.3)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Rural', 'Unknown', NULL, NULL, NULL, 9.3, 76.3, NULL, 14.4, NULL, 1.6, 3.0, NULL, 2.7)
    INTO telemedicineprovider (round, indicator, race, urbanization, education, samplesize, sizevalue,
         percent_do_not_know, percent_no, percent_no_telemedicine_available, percent_no_usual_place_of_care, percent_yes,
         standarderror_do_not_know, standarderror_no, standarderror_no_telemedicine_available, standarderror_no_usual_place_of_care, standarderror_yes)
    VALUES (3, 'Scheduled one or more telemedicine appointments', 'Other non-Hispanic', 'Urban', 'Unknown', NULL, NULL, NULL, 16.6, 65.6, NULL, 17.9, NULL, 1.3, 1.3, NULL, 1.2)
SELECT 1 FROM DUAL;

