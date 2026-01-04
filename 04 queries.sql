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

