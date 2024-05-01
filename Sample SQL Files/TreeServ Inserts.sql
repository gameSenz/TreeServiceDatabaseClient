insert into locationtbl (strAddress, city, zip, distanceMiles, permitReq) values ('200 Hillside Ave', 'Branchville', '07826', 15.5, false);


insert into locationtbl values ('1337','23 Crescent Dr N','Andover','07821',1.2,false);
insert into locationtbl values ('1338', '45 Lake Rd', 'Newton', '07860', 5.3, true);
insert into locationtbl values ('1339', '78 Maple Ave', 'Sparta', '07871', 12.0, false);
insert into locationtbl values ('1340', '102 Main St', 'Stanhope', '07874', 8.1, true);
insert into locationtbl values ('1341', '122 Main St', 'Stanhope', '07874', 8.3, true);
insert into locationtbl values ('1342', '320 Ridge Rd', 'Franklin', '07416', 10.7, true);
insert into locationtbl values ('1343', '12 Valley Rd', 'Hackettstown', '07840', 20.2, false);
insert into locationtbl values ('1344', '99 Brookside Ave', 'Chester', '07930', 25.8, true);
insert into locationtbl values ('1345', '88 High St', 'Newton', '07860', 3.2, false);
insert into locationtbl values ('1346', '55 Elm Rd', 'Blairstown', '07825', 18.4, true);
insert into locationtbl values ('1347', '170 Lake Dr', 'Andover', '07821', 1.7, false);
insert into locationtbl values ('1348', '450 Mountain Ave', 'Warren', '07059', 31.1, true);
insert into locationtbl values ('1349', '300 Somerset St', 'North Plainfield', '07060', 33.5, false);
insert into locationtbl values ('1350', '123 Liberty St', 'Little Ferry', '07643', 42.6, true);
insert into locationtbl values ('1351', '76 Washington Ave', 'Dover', '07801', 16.5, false);
insert into locationtbl values ('1352', '650 Bloomfield Ave', 'Verona', '07044', 27.9, true);
insert into locationtbl values ('1353', '2 Bridge Plaza', 'Fort Lee', '07024', 49.0, false);
insert into locationtbl values ('1354', '360 Springfield Ave', 'Summit', '07901', 35.8, true);
insert into locationtbl values ('1355', '901 Valley Rd', 'Clifton', '07013', 40.2, false);
insert into locationtbl values ('1356', '480 Ridgedale Ave', 'East Hanover', '07936', 28.4, true);


insert into customertbl values ('9085550001', 'John', 'Doe', '1337');
insert into customertbl values ('9085550002', 'Jane', 'Smith', '1338');
insert into customertbl values ('9085550003', 'Alice', 'Johnson', '1339');
insert into customertbl values ('9085550004', 'Bob', 'Lee', '1340');
insert into customertbl values ('9085550005', 'Chloe', 'Kim', '1341');
insert into customertbl values ('9085550006', 'Dave', 'Brown', '1342');
insert into customertbl values ('9085550007', 'Emma', 'Davis', '1343');
insert into customertbl values ('9085550008', 'Frank', 'Miller', '1344');
insert into customertbl values ('9085550009', 'Grace', 'Wilson', '1345');
insert into customertbl values ('9085550010', 'Henry', 'Moore', '1346');
insert into customertbl values ('9085550011', 'Irene', 'Taylor', '1347');
insert into customertbl values ('9085550012', 'Jack', 'Anderson', '1348');
insert into customertbl values ('9085550013', 'Kelly', 'Thomas', '1349');
insert into customertbl values ('9085550014', 'Leo', 'Jackson', '1350');
insert into customertbl values ('9085550015', 'Mia', 'White', '1351');
insert into customertbl values ('9085550016', 'Noah', 'Harris', '1352');
insert into customertbl values ('9085550017', 'Olivia', 'Martin', '1353');
insert into customertbl values ('9085550018', 'Pete', 'Thompson', '1354');
insert into customertbl values ('9085550019', 'Quinn', 'Garcia', '1355');
insert into customertbl values ('9085550020', 'Rachel', 'Martinez', '1356');


insert into equipmenttbl values ('0001','Poleclip 10ft',null,'Operational',null);
insert into equipmenttbl values ('0002', 'Chainsaw 15"', 'CS150987', 'Operational', null);
insert into equipmenttbl values ('0003', 'Climbing Harness', 'CH200300', 'Operational', null);
insert into equipmenttbl values ('0004', 'Stump Grinder', 'SG880120', 'Broken', 'Yes');
insert into equipmenttbl values ('0005', 'Lopper Shears', null, 'Operational', null);
insert into equipmenttbl values ('0006', 'Hand Saw 24"', null, 'Operational', null);
insert into equipmenttbl values ('0007', 'Pruning Shears', 'PS991076', 'Operational', null);
insert into equipmenttbl values ('0008', 'Wood Chipper', 'WC775032', 'Operational', 'Yes');
insert into equipmenttbl values ('0009', 'Tree Climbing Spikes', null, 'Operational', null);
insert into equipmenttbl values ('0010', 'Static Rope 50m', 'SR50M3002', 'Operational', null);
insert into equipmenttbl values ('0011', 'Dynamic Rope 30m', 'DR30M4001', 'Operational', null);
insert into equipmenttbl values ('0012', 'Large Wood Chipper', 'WC455032', 'Maintenance', 'Yes');



insert into vehiclestbl values ('1FATP8UH3G5316970', 'Ford', 'F-150', 2010, null,false, 14, 125000);
insert into vehiclestbl values ('5TENX22N75Z037987', 'Ram', '2500', 2016, null,false, 12, 92000);
insert into vehiclestbl values ('1FTFW1CF0EKF51253', 'Ford', 'F-250 Super Duty', 2019, null,false, 12, 35000);
insert into vehiclestbl values ('3D7ML48C7WG766952', 'Ford', 'F-350 Utility', 2015, null,false, 15, 180000);
insert into vehiclestbl values ('6FEX160012DE19204', 'Liebherr', 'LTM 1030-2.1', 2008, 'Crane Operation Permit',true, 6, 380500);
insert into vehiclestbl values ('2FMDK3GC4BBA03601', 'Freightliner', 'M2 106', 2010, null, false, 10, 286000);
insert into vehiclestbl values ('3C7WRNFLXFG231984', 'GMC', 'C5500', 2006, null, false, 12, 186000);
insert into vehiclestbl values ('1GDJ6C1C77F900423', 'International', 'Durastar 4300', 2011, null, true, 12, 250000);


insert into employeetbl values ('E001', 'Conor', 'Gallagher', '9705551001', 200.00, null, true);
insert into employeetbl values ('E002', 'Reece', 'James', '9705551005', 175.00, null, false);
insert into employeetbl values ('E003', 'Enzo', 'Fernandez', '9705551006', 200.00, null, true);
insert into employeetbl values ('E004', 'Nico', 'Jackson', '9705551007', 185.00, 'Arborist', false);
insert into employeetbl values ('E005', 'Cole', 'Palmer', '9705551010', 205.00, 'Crane Operation', true);


insert into estimatestbl values ('EST0000001', '9085550001', 'Large tree removal', 2200.00);
insert into estimatestbl values ('EST0000002', '9085550002', 'Stump removal front', 300.00);
insert into estimatestbl values ('EST0000003', '9085550003', 'Crown reduction for oak left side', 1300.00);
insert into estimatestbl values ('EST0000004', '9085550004', 'Dead limb removal in front oak', 900.00);
insert into estimatestbl values ('EST0000005', '9085550005', '2 Dead limbs removal back birch', 1100.00);
insert into estimatestbl values ('EST0000006', '9085550006', 'Emergency tree removal + stump', 2500.00);
insert into estimatestbl values ('EST0000007', '9085550007', '3 Trimmings, 2 front, 1 back', 1600.00);
insert into estimatestbl values ('EST0000008', '9085550008', '2 tree removals + stumps in front', 1200.00);
insert into estimatestbl values ('EST0000009', '9085550009', 'Big oak in front', 800.00);
insert into estimatestbl values ('EST0000010', '9085550010', 'Pruning on 6 marked trees', 950.00);
insert into estimatestbl values ('EST0000011', '9085550011', 'Safety pruning trees on driveway', 700.00);
insert into estimatestbl values ('EST0000012', '9085550012', '4 Tree Removal + Stump', 2200.00);
insert into estimatestbl values ('EST0000013', '9085550013', '5 Tree Removal; Leave wood in yard 18in', 1500.00);
insert into estimatestbl values ('EST0000014', '9085550014', 'Huge tree in backyard + stump', 2400.00);
insert into estimatestbl values ('EST0000015', '9085550015', '12 Trees Removal + stump', 12000.00);
insert into estimatestbl values ('EST0000016', '9085550016', 'Fallen Tree Removal + Stump', 1100.00);
insert into estimatestbl values ('EST0000017', '9085550017', 'Trimming front trees', 700.00);
insert into estimatestbl values ('EST0000018', '9085550018', 'Trimming front trees', 600.00);
insert into estimatestbl values ('EST0000019', '9085550019', 'Trimming front trees', 500.00);
insert into estimatestbl values ('EST0000020', '9085550020', 'Trimming front trees', 400.00);


insert into vehiclesinestimatetbl values ('VH0001', 'EST0000001', '6FEX160012DE19204');
insert into vehiclesinestimatetbl values ('VH0002', 'EST0000001', '3C7WRNFLXFG231984');

insert into vehiclesinestimatetbl values ('VH0003', 'EST0000002', '1FTFW1CF0EKF51253');

insert into vehiclesinestimatetbl values ('VH0004', 'EST0000003', '5TENX22N75Z037987');

insert into vehiclesinestimatetbl values ('VH0005', 'EST0000004', '5TENX22N75Z037987');

insert into vehiclesinestimatetbl values ('VH0006', 'EST0000005', '1GDJ6C1C77F900423');

insert into vehiclesinestimatetbl values ('VH0007', 'EST0000006', '2FMDK3GC4BBA03601');

insert into vehiclesinestimatetbl values ('VH0008', 'EST0000007', '1FTFW1CF0EKF51253');

insert into vehiclesinestimatetbl values ('VH0009', 'EST0000008', '1GDJ6C1C77F900423');
insert into vehiclesinestimatetbl values ('VH0010', 'EST0000008', '3D7ML48C7WG766952');

insert into vehiclesinestimatetbl values ('VH0011', 'EST0000009', '6FEX160012DE19204');

insert into vehiclesinestimatetbl values ('VH0012', 'EST0000010', '3D7ML48C7WG766952');

insert into vehiclesinestimatetbl values ('VH0013', 'EST0000011', '1FTFW1CF0EKF51253');

insert into vehiclesinestimatetbl values ('VH0014', 'EST0000012', '3C7WRNFLXFG231984');
insert into vehiclesinestimatetbl values ('VH0015', 'EST0000012', '6FEX160012DE19204');


insert into vehiclesinestimatetbl values ('VH0016', 'EST0000013', '3C7WRNFLXFG231984');
insert into vehiclesinestimatetbl values ('VH0017', 'EST0000013', '6FEX160012DE19204');

insert into vehiclesinestimatetbl values ('VH0018', 'EST0000014', '6FEX160012DE19204');
insert into vehiclesinestimatetbl values ('VH0019', 'EST0000014', '3C7WRNFLXFG231984');

insert into vehiclesinestimatetbl values ('VH0020', 'EST0000015', '3C7WRNFLXFG231984');
insert into vehiclesinestimatetbl values ('VH0021', 'EST0000015', '6FEX160012DE19204');
insert into vehiclesinestimatetbl values ('VH0022', 'EST0000015', '1GDJ6C1C77F900423');
insert into vehiclesinestimatetbl values ('VH0023', 'EST0000015', '2FMDK3GC4BBA03601');

insert into vehiclesinestimatetbl values ('VH0024', 'EST0000016', '1GDJ6C1C77F900423');

insert into vehiclesinestimatetbl values ('VH0025', 'EST0000017', '1FATP8UH3G5316970');

insert into vehiclesinestimatetbl values ('VH0026', 'EST0000018', '1FTFW1CF0EKF51253');

insert into vehiclesinestimatetbl values ('VH0027', 'EST0000019', '5TENX22N75Z037987');

insert into vehiclesinestimatetbl values ('VH0028', 'EST0000020', '5TENX22N75Z037987');


insert into equipmentinestimatetbl values ('EQ0001', 'EST0000001', '0003');
insert into equipmentinestimatetbl values ('EQ0002', 'EST0000001', '0002');
insert into equipmentinestimatetbl values ('EQ0003', 'EST0000001', '0008');
insert into equipmentinestimatetbl values ('EQ0004', 'EST0000001', '0010');
insert into equipmentinestimatetbl values ('EQ0005', 'EST0000001', '0011');

insert into equipmentinestimatetbl values ('EQ0006', 'EST0000002', '0004');
insert into equipmentinestimatetbl values ('EQ0007', 'EST0000002', '0002');

insert into equipmentinestimatetbl values ('EQ0008', 'EST0000003', '0001');
insert into equipmentinestimatetbl values ('EQ0009', 'EST0000003', '0002');
insert into equipmentinestimatetbl values ('EQ0010', 'EST0000003', '0007');

insert into equipmentinestimatetbl values ('EQ0011', 'EST0000004', '0011');
insert into equipmentinestimatetbl values ('EQ0012', 'EST0000004', '0002');

insert into equipmentinestimatetbl values ('EQ0013', 'EST0000005', '0011');
insert into equipmentinestimatetbl values ('EQ0014', 'EST0000005', '0002');

insert into equipmentinestimatetbl values ('EQ0015', 'EST0000006', '0003');
insert into equipmentinestimatetbl values ('EQ0016', 'EST0000006', '0002');
insert into equipmentinestimatetbl values ('EQ0017', 'EST0000006', '0008');
insert into equipmentinestimatetbl values ('EQ0018', 'EST0000006', '0010');
insert into equipmentinestimatetbl values ('EQ0019', 'EST0000006', '0011');
insert into equipmentinestimatetbl values ('EQ0020', 'EST0000006', '0004');

insert into equipmentinestimatetbl values ('EQ0021', 'EST0000007', '0011');
insert into equipmentinestimatetbl values ('EQ0022', 'EST0000007', '0002');

insert into equipmentinestimatetbl values ('EQ0023', 'EST0000008', '0003');
insert into equipmentinestimatetbl values ('EQ0024', 'EST0000008', '0002');
insert into equipmentinestimatetbl values ('EQ0025', 'EST0000008', '0008');

insert into equipmentinestimatetbl values ('EQ0026', 'EST0000009', '0010');
insert into equipmentinestimatetbl values ('EQ0027', 'EST0000009', '0011');
insert into equipmentinestimatetbl values ('EQ0028', 'EST0000009', '0004');

insert into equipmentinestimatetbl values ('EQ0029', 'EST0000010', '0003');
insert into equipmentinestimatetbl values ('EQ0030', 'EST0000010', '0002');
insert into equipmentinestimatetbl values ('EQ0031', 'EST0000010', '0008');

insert into equipmentinestimatetbl values ('EQ0032', 'EST0000011', '0010');
insert into equipmentinestimatetbl values ('EQ0033', 'EST0000011', '0011');
insert into equipmentinestimatetbl values ('EQ0034', 'EST0000011', '0004');

insert into equipmentinestimatetbl values ('EQ0035', 'EST0000012', '0003');
insert into equipmentinestimatetbl values ('EQ0036', 'EST0000012', '0002');
insert into equipmentinestimatetbl values ('EQ0037', 'EST0000012', '0008');

insert into equipmentinestimatetbl values ('EQ0038', 'EST0000013', '0010');
insert into equipmentinestimatetbl values ('EQ0039', 'EST0000013', '0011');
insert into equipmentinestimatetbl values ('EQ0040', 'EST0000013', '0004');

insert into equipmentinestimatetbl values ('EQ0041', 'EST0000014', '0003');
insert into equipmentinestimatetbl values ('EQ0042', 'EST0000014', '0002');
insert into equipmentinestimatetbl values ('EQ0043', 'EST0000014', '0008');

insert into equipmentinestimatetbl values ('EQ0044', 'EST0000015', '0011');
insert into equipmentinestimatetbl values ('EQ0045', 'EST0000015', '0004');
insert into equipmentinestimatetbl values ('EQ0046', 'EST0000015', '0003');

insert into equipmentinestimatetbl values ('EQ0047', 'EST0000016', '0010');
insert into equipmentinestimatetbl values ('EQ0048', 'EST0000016', '0008');
insert into equipmentinestimatetbl values ('EQ0049', 'EST0000016', '0002');

insert into equipmentinestimatetbl values ('EQ0050', 'EST0000017', '0009');
insert into equipmentinestimatetbl values ('EQ0051', 'EST0000017', '0005');
insert into equipmentinestimatetbl values ('EQ0052', 'EST0000017', '0007');

insert into equipmentinestimatetbl values ('EQ0053', 'EST0000018', '0006');
insert into equipmentinestimatetbl values ('EQ0054', 'EST0000018', '0001');
insert into equipmentinestimatetbl values ('EQ0055', 'EST0000018', '0011');

insert into equipmentinestimatetbl values ('EQ0056', 'EST0000019', '0004');
insert into equipmentinestimatetbl values ('EQ0057', 'EST0000019', '0003');
insert into equipmentinestimatetbl values ('EQ0058', 'EST0000019', '0008');

insert into equipmentinestimatetbl values ('EQ0059', 'EST0000020', '0010');
insert into equipmentinestimatetbl values ('EQ0060', 'EST0000020', '0002');
insert into equipmentinestimatetbl values ('EQ0061', 'EST0000020', '0004');


insert into jobstbl values ('JB0001','EST0000001','2024-05-12',null,'Scheduled',2200);
insert into jobstbl values ('JB0002','EST0000002','2024-04-12','2024-04-12','Complete',2200);
insert into jobstbl values ('JB0003','EST0000003','2024-05-13',null,'Scheduled',2200);
insert into jobstbl values ('JB0004','EST0000004','2024-04-19','2024-04-19','Scheduled',2200);
insert into jobstbl values ('JB0005','EST0000005','2024-04-19','2024-04-19','Scheduled',2200);
insert into jobstbl values ('JB0006','EST0000006','2024-04-25',null,'In-progress',2200);
insert into jobstbl values ('JB0007','EST0000007','2024-04-21','2024-04-21','Scheduled',2200);
insert into jobstbl values ('JB0008','EST0000008','2024-04-20','2024-04-20','Completed',2200);
insert into jobstbl values ('JB0009','EST0000009','2024-05-15',null,'Scheduled',2200);
insert into jobstbl values ('JB0010','EST0000015','2024-05-14',null,'Scheduled',2200);


insert into employeesatjobtbl values ('EJ0001','E001','JB0001');
insert into employeesatjobtbl values ('EJ0002','E002','JB0001');
insert into employeesatjobtbl values ('EJ0003','E005','JB0001');

insert into employeesatjobtbl values ('EJ0004','E002','JB0002');

insert into employeesatjobtbl values ('EJ0005','E004','JB0003');

insert into employeesatjobtbl values ('EJ0006','E004','JB0004');

insert into employeesatjobtbl values ('EJ0007','E001','JB0005');

insert into employeesatjobtbl values ('EJ0008','E002','JB0006');
insert into employeesatjobtbl values ('EJ0009','E001','JB0006');
insert into employeesatjobtbl values ('EJ0010','E004','JB0006');

insert into employeesatjobtbl values ('EJ0008','E002','JB0007');
insert into employeesatjobtbl values ('EJ0009','E001','JB0007');

insert into employeesatjobtbl values ('EJ0008','E005','JB0008');
insert into employeesatjobtbl values ('EJ0009','E001','JB0008');
insert into employeesatjobtbl values ('EJ0010','E004','JB0008');

insert into employeesatjobtbl values ('EJ0008','E002','JB0009');
insert into employeesatjobtbl values ('EJ0009','E003','JB0009');
insert into employeesatjobtbl values ('EJ0010','E005','JB0009');

insert into employeesatjobtbl values ('EJ0010','E004','JB0010');


