CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Gender CHAR(1),
    DOB DATE,
    EnrollmentDate DATE
);

CREATE TABLE Visits (
    VisitID INT PRIMARY KEY,
    PatientID INT,
    VisitDate DATE,
    VisitType VARCHAR(30),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

CREATE TABLE LabResults (
    LabID INT PRIMARY KEY,
    PatientID INT,
    TestName VARCHAR(50),
    ResultValue DECIMAL(5,2),
    TestDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

CREATE TABLE AdverseEvents (
    AEID INT PRIMARY KEY,
    PatientID INT,
    EventName VARCHAR(100),
    Severity VARCHAR(20),
    StartDate DATE,
    Outcome VARCHAR(30),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
