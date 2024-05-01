
alter table equipmentinestimatetbl drop foreign key equipmentinestimatetbl_ibfk_1;
alter table equipmentinestimatetbl drop foreign key equipmentinestimatetbl_ibfk_2;
alter table vehiclesinestimatetbl drop foreign key vehiclesinestimatetbl_ibfk_1;
alter table vehiclesinestimatetbl drop foreign key vehiclesinestimatetbl_ibfk_2;
alter table estimatestbl drop foreign key estimatestbl_ibfk_1;

drop table if exists EmployeesAtJobTBL;
drop table if exists jobstbl;
drop table if exists estimatestbl;
drop table if exists EquipmentInEstimateTBL;
drop table if exists VehiclesInEstimateTBL;
drop table if exists employeetbl;
drop table if exists vehiclestbl;
drop table if exists equipmenttbl;
drop table if exists customertbl;
drop table if exists locationtbl;

create table LocationTBL
(
    locationID int auto_increment primary key,
    strAddress varchar(50) not null,
    city varchar(50) not null,
    zip char(5) not null,
    distanceMiles decimal not null,
    permitReq boolean not null,
    check (distanceMiles > 0)
);

alter table locationtbl auto_increment=1000;

create table CustomerTBL
(
    customerPhoneNumber char(10) PRIMARY KEY,
    firstName varchar(25) not null,
    lastName varchar(25) not null,
    locationID int,
    foreign key (locationID) references LocationTBL(locationID)
);

create table EquipmentTBL
(
    equipmentID char(4) primary key,
    equipmentDesc varchar(100) not null,
    serialNumber varchar(20),
    workingCondition varchar(20) not null,
    licenseNeeded varchar(50)
);

create table VehiclesTBL
(
    vin varchar(17) primary key,
    make varchar(20) not null,
    model varchar(20) not null,
    year year not null,
    certs varchar(50),
    cdl boolean not null,
    mpg int,
    odometer int
);

create table EmployeeTBL
(
    employeeID char(4) primary key,
    firstName varchar(50) not null,
    lastName varchar(50) not null,
    employeePhoneNum char(10) not null,
    dailyRate decimal not null,
    certifications varchar(100),
    hasCDL boolean not null
);

create table EstimatesTBL
(
    estimateID varchar(10) primary key,
    phoneNumber char(10) not null,
    estimateDesc varchar(100),
    estimatePrice decimal not null,
    foreign key (phoneNumber) references CustomerTBL(customerPhoneNumber)
);

create table VehiclesInEstimateTBL
(
    vehInEstID char(6) primary key,
    estimateID varchar(10) not null,
    vin varchar(17) not null,
    foreign key (vin) references VehiclesTBL(vin),
    foreign key (estimateID) references EstimatesTBL(estimateID)
);

create table EquipmentInEstimateTBL
(
    equipInEstID char(6) primary key,
    estimateID varchar(10) not null,
    equipmentID char(4) not null,
    foreign key (equipmentID) references EquipmentTBL(equipmentID),
    foreign key (estimateID) references EstimatesTBL(estimateID)
);

create table JobsTBL
(
    jobID char(6) primary key,
    estimateID char(10) null,
    jobStartDate date not null,
    jobEndDate date,
    jobStatus varchar(30) not null,
    finalPrice decimal not null,
    foreign key (estimateID) references EstimatesTBL(estimateID)
);

create table EmployeesAtJobTBL
(
    employeesAtJobID char(6),
    employeeID char(4) not null,
    jobID char(6) not null,
    foreign key (employeeID) references EmployeeTBL(employeeID),
    foreign key (jobID) references jobstbl(jobID)
);

commit;