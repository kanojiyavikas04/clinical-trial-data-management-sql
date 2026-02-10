USE ClinicalTrialDB;
GO

INSERT INTO Patients (PatientID, PatientName, Gender, DOB, EnrollmentDate)
VALUES
(1, 'Ravi Kumar', 'M', '1985-04-12', '2024-01-10'),
(2, 'Anita Sharma', 'F', '1990-08-22', '2024-01-15'),
(3, 'Suresh Patel', 'M', '1978-11-03', '2024-01-18'),
(4, 'Neha Verma', 'F', '1995-06-25', '2024-01-20'),
(5, 'Amit Singh', 'M', '1982-02-14', '2024-01-22');

USE ClinicalTrialDB;
GO

INSERT INTO Visits (VisitID, PatientID, VisitDate, VisitType)
VALUES
(1005, 2, '2024-01-12', 'follow-up'),
(1006, 3, '2024-01-15', 'general-surgery'),
(1007, 1, '2024-01-20', 'follow-up'),
(1008, 5, '2024-01-25', 'baseline'),
(1009, 4, '2024-01-30', 'follow-up');

USE ClinicalTrialDB;
GO

INSERT INTO LabResults (LabID, PatientID, TestName, ResultValue, TestDate)
VALUES
(1, 1, 'Hemoglobin', 46, '2024-01-08'),
(2, 2, 'WBC', 6500, '2024-02-11'),
(3, 2, 'RBC', 46, '2024-02-11'),
(4, 5, 'Platelets', 250000, '2024-03-25'),
(5, 3, 'HbA1c', 69, '2024-01-28'),
(6, 4, 'HbA1c', 69, '2024-01-28');

use ClinicalTrialDB;
go

INSERT INTO Adervsevents
(AEID, PatientID, EventName, Severity, Startdate, outcome)
VALUES
(1, 1, 'Headache', 'Mild', '2024-01-22', 'Recovered'),
(2, 2, 'Fever', 'Severe', '2024-02-23', 'Recovered'),
(3, 4, 'Sneezing', 'Mild', '2024-03-11', 'Recovered'),
(4, 3, 'Nausea', 'Severe', '2024-01-27', 'Ongoing'),
(5, 5, 'Vomiting', 'Severe', '2024-01-27', 'Ongoing'),
(6, 2, 'Dizziness', 'Severe', '2024-01-30', 'Recovered');

USE ClinicalTrialDB;
GO

INSERT INTO Sites (SiteID, SiteName, City)
VALUES
(101, 'Apollo Hospital', 'Bengaluru'),
(102, 'Fortis Hospital', 'Mumbai'),
(103, 'Narayana Health', 'Delhi');
