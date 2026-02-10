--Write a query to display all patients

use clinicaltraildb;
go

select *
From patients;

/*

--Show patient name and enrollment date.

select 
    p.PatientName,
    p.EnrollmentDate
FROM patients p;

/*

--Insert a new patient into the Patients table.



USE ClinicalTrialDB;
GO

INSERT INTO Patients
(PatientID, PatientName, Gender, DOB, EnrollmentDate)
VALUES
(6, 'Vikas', 'M', '2000-02-04', '2026-01-04'),
(7, 'Akash', 'M', '1999-05-28', '2026-01-04'),
(8, 'Greeshma', 'F', '2000-03-22', '2026-01-04');

--Update a patient’s enrollment date

Use clinicaltrialdb;
go 

UPDATE dbo.Patients
SET EnrollmentDate = '2026-02-10'
WHERE PatientID = 8;

--Show patient name with visit date and visit type.

Use clinicaltrialdb;
go 

Select 
    p.patientName,
    v.VisitDate,
    v.visitType
FROM Patients p
JOIN visit V
ON p.PatientID = V.PatientId;

--Show patient name with lab test name and result value

Use clinicaltrialdb;
go

Select 
    p.patientName,
    l.TestName,
    l.Resultvalue
 FROM Patients p
 JOIN Labresults l
 ON p.PatientId = l.PatientID;

 --Show patient name with adverse event and severity.

 Use clinicaltrialdb;
go

Select 
    p.patientName,
    a.EventName,
    a.Severity
 FROM Patients p
 JOIN Adervsevents A
 ON p.PatientId = a.PatientID;

 --Show patients who have no visits.

 use clinicaltrialdb;
 go

 SELECT
    p.PatientID,
    p.PatientName
FROM Patients p
LEFT JOIN Labresults l
    ON p.PatientID = l.PatientID
WHERE l.PatientID IS NULL;

--Show patients who have no adverse events

use clinicaltrialdb;
 go

 SELECT
    p.PatientID,
    p.PatientName
FROM Patients p
LEFT JOIN Adervsevents A
    ON p.PatientID = a.PatientID
WHERE a.PatientID IS NULL;

--Identify visit that happened before enrollment date.

use clinicaltraildb;
go

SELECT
    p.PatientID,
    p.PatientName,
    p.EnrollmentDate,
    v.VisitDate,
    v.VisitType
FROM Visit v
JOIN Patients p
    ON v.PatientID = p.PatientID
WHERE v.VisitDate < p.EnrollmentDate;

--Identify visit that happened After enrollment date.

use clinicaltraildb;
go

select 
    p.patientId,
    p.PatientName,
    p.EnrollmentDate,
    v.visitDate,
    v.visitType
FROM visit v
JOIN Patients p
ON v.patientID = p.PatientID
Where v.visitdate > p.EnrollmentDate;

--Show all possible combinations of Patients and Sites using CROSS JOIN.

use ClinicalTrialDB;
go

SELECT
    p.PatientID,
    p.PatientName,
    s.SiteName,
    s.City
FROM Patients p
CROSS JOIN Sites s;


SELECT COUNT(*) AS TotalCombinations
FROM Patients
CROSS JOIN Sites;

--Display patient name and all visit types using CROSS JOIN.

use ClinicalTrialDB;
go

SELECT
    p.PatientName,
    v.VisitType
    FROM Patients p 
    CROSS JOIN Visit v;

    Select COUNT(*) AS Totalcombination
    From Patients*
    cross join visit;

 --Count number of visits by VisitType.

 Use clinicaltrialdb;
 go
 select Count(*) AS Total_nr_VisitType
 From visit;

 --Find average ResultValue for HbA1c tests.

 Use ClinicalTrialDB;
 go

 Select COUNT(*) AS Total_HbA1c_Test,
 AVG(ResultValue) as Avg_HbA1c_value
 From labresults
 Where TestName = 'HbA1c';  

 --Show PatientName and Gender only

use ClinicalTrialDB;
go 

select 
    p.patientName,
    p.Gender
From Patients p;

--List all sites located in Delhi

use ClinicalTrialDB;
go 

Select
    s.SiteName,
    s.City
From sites s
Where s.city = 'Delhi' ;

--List all sites located in Delhi

use ClinicalTrialDB;
go 

Select
    s.SiteName,
    s.City
From sites s
Where s.city = 'Bengaluru';

--Display patients who have more than one lab test.

use ClinicalTrialDB;
go 

Select
    p.PatientName,
    P.PatientID,
     COUNT(l.LabID) AS TotalLabTests
From patients P
JOIN Labresults l
on p.PatientID = l.PatientID
GROUP BY 
    p.PatientID,
    p.PatientName
HAVING COUNT(l.LabID) > 1;

----Display patients who have Less than Two lab test.

use ClinicalTrialDB;
go
 select
     p.PatientName,
    P.PatientID,
   COUNT(l.labID) AS totallabtests
   From Patients p
   JOIN Labresults l
   on p.patientID = l.patientID
   GROUP BY
   p.PatientID,
   p.PatientName
   Having count(l.labId) < 2;

   --List all unique PatientIDs from Patients and LabResults using UNION

   use ClinicalTrialDB;
   go

   SELECT PatientID
FROM Patients

UNION

SELECT PatientID
FROM LabResults;

 --List all unique PatientName from Patients and  TestName from LabResults using UNION

  use ClinicalTrialDB;
   go

   select PatientName
   From Patients

   UNION

   Select TestName
   From LabResults;

   --INNER JOIN Patients and Visits to show visit details.

   USE ClinicalTrialDB;
GO

SELECT
    p.PatientID,
    p.PatientName,
    v.VisitID,
    v.VisitDate,
    v.VisitType
FROM Patients p
INNER JOIN Visit v
ON p.PatientID = v.PatientID;


   
 

