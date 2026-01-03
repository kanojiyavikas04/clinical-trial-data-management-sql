use clinicaltrialDb;
go

select
    p.PatientID,
    p.PatientName,
    p.EnrollmentDate
 FROM Visit v
 JOIN Patients p
 ON v.PatientID = p.patientID
 Where v.visitDate > p.EnrollmentDate;
 
 use ClinicalTrialDB;
go 

SELECT
    p.PatientID,
    p.PatientName,
    s.SiteID,
    s.SiteName
FROM Patients p
JOIN Sites s
    ON s.SiteID = s.SiteID;
use clinicaltrialDB;
go

SELECT
    p.PatientID,
    p.PatientName,
    v.VisitID,
    v.VisitType
FROM Patients p
JOIN Visit v
    ON p.PatientID = v.PatientID;

USE ClinicalTrialDB;
GO 

SELECT
    P.PatientName,
    s.SiteName,
    s.City
 FROM Patients p
 CROSS JOIN sites s;

 USE ClinicalTrialDB;
GO 

SELECT
    P.PatientName,
    v.VisitType
 FROM Patients p
 CROSS JOIN Visit V;

 USE ClinicalTrialDB;
GO 

SELECT PatientID
FROM Patients
UNION
SELECT PatientID
FROM LabResults;

USE ClinicalTrialDB;
GO 

SELECT PatientID, PatientName AS MRN
FROM Patients

UNION

SELECT PatientID, TestName AS MRN
FROM LabResults;

SELECT
    PatientID,
    TestName,
    ResultValue,
    AVG(ResultValue) OVER (PARTITION BY PatientID) AS AvgResult
FROM LabResults;
