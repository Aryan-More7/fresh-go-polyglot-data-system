CREATE TABLE order_details_data (
    order_id INT,
    order_detail_id	INT,
    product_id	INT,
    quantity INT,
    price_per_unit DECIMAL(4, 2),
    subtotal DECIMAL(5, 2),
)

CREATE TABLE customers_extended_data (
    customer_id INT,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    email NVARCHAR(100),
    phone_number NVARCHAR(15),
    address NVARCHAR(100),
    longitude DECIMAL(9, 6),
    latitude DECIMAL(9, 6)
);

CREATE TABLE fresh_products_data (
    product_id INT,
    name NVARCHAR(50),
    category NVARCHAR(50),
    price DECIMAL(10, 2),
    sell_by_date DATE
);
CREATE TABLE stores_data (
    store_id INT,
    name NVARCHAR(50),
    longitude DECIMAL(9, 6),
    latitude DECIMAL(9, 6),
    manager_id INT,
    contact_number NVARCHAR(15)
);

CREATE TABLE updated_inventory_fresh_new_data (
    inventory_id INT,
    store_id INT,
    product_id INT,
    stock_quantity INT,
    reorder_threshold INT
);
SHOW TABLES;

ALTER TABLE stores_data
DROP COLUMN product_name;
ALTER TABLE stores_data
ADD store_name NVARCHAR(50);

ALTER TABLE stores_data
ALTER COLUMN contact_number NVARCHAR(50);

ALTER TABLE customers_extended_data
DROP COLUMN address;

ALTER TABLE customers_extended_data
ADD customer_address NVARCHAR(100)

ALTER TABLE customers_extended_data
ALTER COLUMN phone_number NVARCHAR(50);

INSERT INTO customers_extended_data (customer_id, first_name, last_name, email, phone_number, customer_address, latitude, longitude) VALUES
(1, 'Michael', 'Moran', 'melissaharris@caldwell-jones.org', '+1-289-102-3616', '62931 Bianca Island\nThomasville, IN 89985', -57.504298, 85.788515),
(2, 'Christina', 'Long', 'tstevens@hotmail.com', '(559)257-5395', '9236 Natalie Circles Apt. 802\nPoolemouth, NV 33669', -23.394247, 89.25551),
(3, 'Jason', 'Gonzales', 'michael99@hotmail.com', '274-345-9335x78414', '45064 Candice Circle\nLake Kyle, GA 48476', 83.424788, -44.475197),
(4, 'Kimberly', 'Greene', 'william28@sims.net', '+1-725-204-6932', '809 Coffey Wall Apt. 165\nNew Mariemouth, MT 53364', -44.549804, 74.63557),
(5, 'Zachary', 'Martin', 'brandy71@duncan.org', '570-779-7610', '462 Washington Isle Apt. 862\nWest Lisaton, AK 32355', 46.858404, 29.355314),
(6, 'Mary', 'Walton', 'johnturner@cook.com', '5635972552', '645 Dominguez Spring Apt. 694\nLake Shaneshire, TN 75570', 117.291461, -30.747909),
(7, 'Sara', 'Jefferson', 'tnelson@yahoo.com', '633-899-9187', '577 Moore Lights Suite 887\nNew Todd, AR 49684', -146.601923, 83.369696),
(8, 'Dylan', 'Moore', 'stevenphillips@hotmail.com', '521-103-9146', '625 Jessica Prairie\nWest Cheryl, MN 23352', -61.760807, 33.230534),
(9, 'Paul', 'Kerr', 'jessica65@yahoo.com', '+1-366-376-5111', '0099 David Spurs Apt. 160\nCynthiamouth, WA 40354', -28.6205, 84.000639),
(10, 'Jennifer', 'Robinson', 'mitchellmurphy@strickland.com', '+1-349-642-8191x0497', '994 Russo Roads\nPamelaberg, DC 69422', -1.195395, -60.750916),
(11, 'Alexis', 'Williams', 'mmarquez@davidson-green.biz', '242.211.2231', '6291 Lindsey Mountains\nGonzalezberg, LA 79184', -144.813011, 46.38275),
(12, 'Robert', 'Chavez', 'laurie97@mclean.com', '(357)737-2308x5307', '2692 Diaz Stravenue Apt. 810\nPort Andrew, IA 25411', -150.377922, -22.869848),
(13, 'Matthew', 'Rojas', 'michaelstone@ho.com', '001-906-852-8134x8853', '652 Gary Forest\nSouth Larry, MA 64065', 128.191861, -67.038527),
(14, 'Sarah', 'Carroll', 'rdeleon@hotmail.com', '+1-102-192-6190x6265', '8346 Fitzgerald Cliffs Suite 459\nEast Tara, AZ 36674', -93.360967, 9.278719),
(15, 'Whitney', 'Garcia', 'darroyo@burnett-mccarthy.com', '+1-557-433-2994', '8913 Wendy River\nLynchburgh, TX 00907', -22.222007, -10.080509),
(16, 'Frank', 'Wu', 'charles08@hotmail.com', '153-948-6055x570', '08821 Martinez Flats Suite 270\nWest Stevenshire, ID 84202', 86.869486, -77.64815),
(17, 'Alexandra', 'Cobb', 'jenniferwallace@hotmail.com', '463-283-5255x6808', '773 Jill Manor\nAlisonshire, HI 38595', 170.163047, 85.800832),
(18, 'Catherine', 'Brown', 'bhernandez@gmail.com', '817.328.9923', '134 Patrick Court Apt. 451\nNorth Mariaville, IA 59859', -174.887477, -67.1156),
(19, 'Destiny', 'White', 'vickiesimmons@yahoo.com', '(043)338-3023', '600 Douglas Loaf\nMorganport, VT 43092', -78.852247, 77.779588),
(20, 'Sarah', 'Bell', 'alyssa34@yahoo.com', '+1-497-987-3698x66772', '7137 Jennifer Gateway\nCynthiaberg, PA 11644', 125.550973, 21.758331),
(21, 'Caleb', 'Patterson', 'ulee@hoffman.com', '311-544-3489x7255', '752 Evans Fords Suite 413\nCrossport, ND 93651', 20.811391, -68.901847),
(22, 'Lisa', 'Cook', 'jonathan69@gmail.com', '1389905046', '2526 Porter Cliffs\nWest Chad, MS 43425', -115.441111, -81.81542),
(23, 'Dennis', 'Haynes', 'jillphelps@juarez-perez.com', '+1-694-718-3964x299', '50891 Murray Road\nNorth Hector, TX 47731', 25.564054, -65.477708),
(24, 'Emily', 'Ortiz', 'amartinez@yahoo.com', '+1-333-797-5033x850', '0012 Stewart Crest Apt. 472\nWest Joshuaville, NV 48652', 110.165226, -41.055806),
(25, 'Cory', 'Rosario', 'laurielopez@gmail.com', '001-893-752-2413', '721 Walsh Cliffs\nLisaberg, DC 19022', -174.354907, -43.898827),
(26, 'Renee', 'Cline', 'jonathan22@hotmail.com', '483-403-8309x24779', '3526 Margaret Drive Suite 397\nLake Madelineburgh, NY 85422', 19.957087, -61.183888),
(27, 'Kathleen', 'Hicks', 'smiddleton@douglas-jefferson.com', '128.620.0117x798', '1216 Mcpherson Mission\nAmytown, NY 14081', 176.280519, -7.59423),
(28, 'Roy', 'Mahoney', 'upeters@franklin.com', '968-760-0173x6288', '4378 Glass Drives\nChristophermouth, MD 43340', 0.93506, -22.71758),
(29, 'William', 'Ramos', 'cindy10@vaughn.com', '(259)453-1331x08775', '2360 Dean Mount Suite 137\nBerryborough, MN 06168', -114.061002, 67.914938),
(30, 'Kevin', 'Valdez', 'wferguson@yahoo.com', '361-311-5001x91264', '2644 Jeremiah Common Apt. 895\nNathanport, AR 20014', 143.200073, -76.279026),
(31, 'Kimberly', 'Williams', 'virginia90@hoffman.info', '287-820-3747x3003', '0865 Daniel Via Apt. 539\nLisamouth, GA 11997', 5.508694, 43.681843),
(32, 'Julie', 'Jackson', 'marcwilkins@gmail.com', '307-091-3027x3641', '1805 Mooney Pike Apt. 411\nJasontown, ID 40016', 177.005773, -46.107289),
(33, 'Nathaniel', 'Kelly', 'timothydoyle@weaver-walter.info', '624.000.5414', '769 Bryan Knolls\nNorth Autumn, MO 82639', -164.882331, 72.176128),
(34, 'Jake', 'Barnett', 'ryandonald@yahoo.com', '(926)366-7813x335', '80305 Daniel Flats\nNatalieton, NV 78061', -52.19293, -69.364584),
(35, 'Eric', 'Brown', 'grant06@gmail.com', '0278257689', '96432 Jenkins Lock\nNew Hectortown, WA 80003', 106.663794, -54.368952),
(36, 'Melissa', 'Andrade', 'reyespaul@gmail.com', '400-702-9009', '4666 Rhonda Course Suite 785\nNorth Taraborough, ME 13369', -32.613987, 86.899135),
(37, 'Jennifer', 'Brewer', 'lauramaldonado@yahoo.com', '001-794-292-4058x4710', '93851 Abigail Harbors Suite 344\nNorth Connieside, OK 67348', 72.763866, -1.419072),
(38, 'Kathryn', 'Moore', 'roy23@kennedy-brown.info', '4783080969', '87396 Chapman Fort\nLake Nicole, MA 07029', 3.271003, 41.0443),
(39, 'Elizabeth', 'Rodriguez', 'timothywhite@yahoo.com', '031.689.8648', '5139 Christopher Meadow\nSouth Nathanton, RI 24709', 85.62507, 23.738166),
(40, 'Russell', 'Stewart', 'ortizamanda@anderson-torres.com', '615.466.1365x13688', '866 Wagner Divide Apt. 633\nThomasside, TX 79134', 41.232282, -29.080523),
(41, 'Steven', 'Jones', 'darren86@yahoo.com', '930.899.2611x02634', '521 Peterson Avenue Suite 604\nPort Ricardotown, KY 48034', 66.29419, -65.582093),
(42, 'Megan', 'Davis', 'elizabethlee@hotmail.com', '+1-241-878-7393x4876', '1708 Brandy Rue Suite 302\nSouth Dannyfurt, NH 05161', -6.802642, 82.641533),
(43, 'Randy', 'Clark', 'sherry09@wood.com', '9421572501', '195 Ronald Forest\nLake Chad, ME 67535', -133.755297, -87.833736),
(44, 'Manuel', 'Evans', 'megan79@olsen.info', '249.606.9210', '23031 King Key Apt. 006\nMichaelfort, CA 05919', 153.053716, -67.238784),
(45, 'Jeffrey', 'Ramirez', 'henrylowe@yahoo.com', '8182826611', '481 Murphy Estate\nPort Guy, OK 97545', -29.225161, -45.885809),
(46, 'Joshua', 'Smith', 'lisa48@hotmail.com', '332.553.1875', 'PSC 3526, Box 5198\nAPO AA 00689', 29.274583, -71.382011),
(47, 'Jessica', 'Johnson', 'jonathan22@novak.com', '0672994359', 'Unit 0696 Box 8699\nDPO AE 25218', -115.037525, -55.175936),
(48, 'Tammy', 'Wallace', 'jennifergibson@hunt-hamilton.info', '001-194-351-0122x2108', '521 Cannon Roads\nPowellton, NY 47018', -30.116919, -81.62499),
(49, 'Heather', 'Allen', 'farrellpaul@wheeler.com', '126.191.7182x694', '3339 Caleb Park\nNew Natasha, UT 26115', -109.01083, 48.574679),
(50, 'Wesley', 'Dickerson', 'brockjoseph@gmail.com', '001-467-279-0132', '33691 Rodriguez Square\nJohnnyland, KS 22212', 140.214498, 87.816395),
(51, 'Erin', 'Dean', 'ffrancis@norman.com', '(393)093-6245', '418 Riley Spring\nSouth David, OH 56831', -128.74913, -3.321739),
(52, 'Angela', 'Pope', 'ohouse@hotmail.com', '360-146-6754x43162', '06105 Beth Port\nEast Leslieside, MO 23516', 91.598234, 71.184271),
(53, 'Jennifer', 'Smith', 'ibrown@gmail.com', '001-066-558-4342x89286', 'Unit 0317 Box 7384\nDPO AE 02356', 111.225949, -70.409745),
(54, 'Melissa', 'Maldonado', 'abigaildeleon@yahoo.com', '090-916-2573', '9971 Jay Coves\nEast Cheryl, OK 28418', 137.802683, -42.842056),
(55, 'Zachary', 'Wilkerson', 'marywallace@yahoo.com', '590.354.9192x339', '476 Christopher Neck Suite 425\nRobertland, UT 60001', -156.350013, -56.98349),
(56, 'Mary', 'Garcia', 'eyoung@gmail.com', '4706184693', '95233 Rodriguez Mountains Suite 075\nNew Colleen, WI 22658', 160.571688, -8.854678),
(57, 'Melissa', 'Perry', 'william81@yahoo.com', '151-950-8820x835', '72082 Melissa Island\nEast Vincentchester, IA 86822', -160.852076, 79.088982),
(58, 'Kristopher', 'Jones', 'jake35@berger-short.com', '001-520-252-1791', 'USCGC Baldwin\nFPO AA 51286', 176.549377, -75.777175),
(59, 'Mark', 'Ruiz', 'brownlee@watts.com', '763-015-7390x980', '921 Tran Prairie\nMiguelland, MI 43931', 118.385143, -76.291642),
(60, 'Sheila', 'Allen', 'hryan@hotmail.com', '+1-892-613-0395x3745', '0199 Vanessa Spurs\nSouth Katrina, OH 06665', -145.574509, -23.918522),
(61, 'Frances', 'Williams', 'amyharris@yahoo.com', '+1-701-959-0803', '7280 Gomez Mills Suite 345\nWest Jacksonton, TN 70273', 168.276299, -72.564267),
(62, 'Jacob', 'Johnson', 'jordantracy@roberts.biz', '001-129-895-5513x3583', '613 Tara Expressway\nPenafurt, UT 89635', 161.902767, 19.133391),
(63, 'Elizabeth', 'Pearson', 'plove@hotmail.com', '001-196-432-4122x7974', 'USCGC Miller\nFPO AA 81346', 15.078644, 70.909855),
(64, 'Matthew', 'Bean', 'posborne@butler-benton.com', '001-372-669-2734x57446', '030 Evans Island\nTorreschester, RI 68947', 75.183936, -68.723472),
(65, 'Craig', 'Baker', 'jthomas@gordon.org', '001-383-459-1076x6143', '725 Jesse Expressway\nKelleybury, NH 27677', 24.726346, 87.294594),
(66, 'David', 'Atkins', 'rodriguezjesse@gmail.com', '(930)298-3295', 'USS Powers\nFPO AP 83020', 36.966282, -69.933977),
(67, 'Luis', 'Ortiz', 'wmathews@lopez.com', '8910595370', '630 Lopez Island\nWest Raymondville, NJ 62105', -131.225061, 41.322054),
(68, 'Felicia', 'Martin', 'nicolewerner@yahoo.com', '781-093-9865', '555 Lewis Inlet Suite 940\nWest Michaelton, DC 87149', 21.527996, 65.127896),
(69, 'Susan', 'Hines', 'mmcguire@hotmail.com', '505-717-0424x7818', '559 Davis Junction Suite 760\nPort Laurie, DC 81670', 104.862269, 29.063317),
(70, 'Mikayla', 'Schmidt', 'markjacobs@jackson-riley.com', '0838246362', '97401 Anthony Meadows Suite 170\nEast Jose, NH 01724', -44.978361, 51.608003),
(71, 'Paige', 'Medina', 'carmenfernandez@hotmail.com', '+1-900-382-3963x4600', '27923 Kenneth Mountains\nStevenstad, OK 85106', -35.24119, -78.716838),
(72, 'Wanda', 'Murphy', 'kelsey50@sutton-davila.com', '(555)114-3337', '7325 Jackson Viaduct\nSouth Mark, TN 11892', 71.249827, -28.110733),
(73, 'Steven', 'Taylor', 'matthew92@gmail.com', '+1-183-018-2921x208', '6292 Cain Camp\nNew Shelly, ID 20342', -57.438879, 73.230456),
(74, 'Nicholas', 'Schroeder', 'asellers@weber.biz', '095-129-9895', '27815 Thomas Avenue Apt. 963\nMccartyhaven, UT 69656', 97.298957, 28.887612),
(75, 'David', 'Case', 'danielweber@yahoo.com', '188-333-0398x6623', '858 Matthew Fork\nSouth Heather, OH 56563', -30.293068, 39.355681),
(76, 'Monica', 'Hamilton', 'laurengonzalez@hotmail.com', '761-378-8622', '71655 Stephen Knolls Suite 359\nLake Christopherland, CT 20932', 134.201829, 87.96171),
(77, 'Sabrina', 'Garcia', 'campbellcalvin@yahoo.com', '001-014-266-4119x016', '462 Chung Lodge Suite 757\nEast Coreyborough, MS 35495', 178.740723, 49.2267),
(78, 'Amy', 'Knight', 'herringlauren@yahoo.com', '200-267-8563', '975 Snyder Meadow Apt. 206\nLisaburgh, IA 61362', 43.901815, 88.172475),
(79, 'Daniel', 'Brown', 'jonathanparks@gmail.com', '001-680-302-7954x105', '88348 Dawn Rue\nPort Lisa, AZ 85182', -82.906313, 36.364945),
(80, 'Ana', 'Soto', 'graybryan@gmail.com', '001-215-970-3290x77409', '46350 Stout Glens\nSouth Robert, NC 26874', 46.73068, -19.132328),
(81, 'Rebecca', 'Rubio', 'ybennett@alexander-pennington.biz', '567.161.0631x70482', '96322 Sarah Union\nJohnfurt, IL 73626', 97.844053, 30.205502),
(82, 'Michael', 'Serrano', 'justin27@hotmail.com', '582-054-0988', 'Unit 2500 Box 8646\nDPO AP 12337', -15.48303, -9.766866),
(83, 'Susan', 'Livingston', 'thomas05@jones-small.org', '(853)113-6906', '517 Riley Ridge\nNew Ashleeborough, DC 35917', 46.232997, 14.315243),
(84, 'Steven', 'Daniels', 'stephanie12@gmail.com', '287-672-5038x806', '95340 York Springs\nBriantown, ME 21089', -164.673139, -38.90214),
(85, 'Francisco', 'Brown', 'joshua32@galvan.com', '(083)836-9352x9764', '725 Brittany Skyway Apt. 938\nNew Elizabeth, MD 11633', -0.742538, -77.556547),
(86, 'Mark', 'Hebert', 'joel03@yahoo.com', '242.154.1198x475', '16266 Veronica Stream\nNorth Devinfurt, NE 28010', 118.542747, 23.094582),
(87, 'Joshua', 'Miller', 'rodneyhale@salinas-daniel.org', '7248251235', 'USNV Ferguson\nFPO AE 48821', -100.109072, 44.089641),
(88, 'Frances', 'Greer', 'vlong@hotmail.com', '(420)074-3162x32410', '63880 Tammie Drive\nWest Evan, NH 77079', -117.420808, -66.565188),
(89, 'Evan', 'Hunt', 'sandra68@yahoo.com', '440.132.2483x577', 'USS Richards\nFPO AP 42963', 137.699304, -20.383195),
(90, 'Dana', 'Rivera', 'allenjeremy@archer.com', '975-332-0680x19916', 'PSC 0882, Box 4530\nAPO AA 68152', 129.276926, -8.852217),
(91, 'Jennifer', 'Taylor', 'thomasnathan@gmail.com', '316-245-2922', '52022 Brian Cliff Suite 930\nBarneston, IN 92992', 56.107136, 44.464977),
(92, 'Brian', 'Perry', 'bjohnson@ford.com', '001-918-443-4145', '4621 Martin Crossroad Suite 992\nMckinneystad, FL 42591', 101.660966, 75.655346),
(93, 'Mitchell', 'Dickerson', 'gabrielleprice@yahoo.com', '841.117.2700x07093', 'PSC 9396, Box 8112\nAPO AE 96722', -20.501707, -53.753914),
(94, 'Laura', 'Butler', 'crossamy@moran.com', '530-640-2129x147', 'Unit 0734 Box 3581\nDPO AE 35387', 82.85921, -67.129401),
(95, 'Carrie', 'Nelson', 'vasquezlisa@lane.com', '001-969-462-5257', '9878 Michael Mountain\nNew Sarahville, MO 42275', -65.246264, -71.390252),
(96, 'Robert', 'Giles', 'robert58@yahoo.com', '(839)293-0620', '657 Foster Garden Apt. 171\nChenview, WV 70526', -12.267703, -61.608948),
(97, 'William', 'Smith', 'rebecca45@burns.com', '997.706.2406', '92327 Heather Circles\nLake Benjaminbury, DC 10862', -151.626668, 47.458607),
(98, 'Gwendolyn', 'Allen', 'andreamartin@yahoo.com', '147-081-9767x177', '010 Thomas Knoll\nPort Brandystad, PA 12894', -68.853969, 27.255674),
(99, 'Mike', 'Wells', 'qbarajas@yahoo.com', '+1-836-791-2081x01043', '6404 Amy Inlet Suite 069\nWest Johnchester, MT 14324', -35.949725, -49.192072),
(100, 'Megan', 'Jackson', 'justinmendoza@yahoo.com', '+1-049-258-8560', 'PSC 8713, Box 5238\nAPO AA 49134', -12.151313, -89.653253);

INSERT INTO stores_data (store_id, store_name, longitude, latitude, manager_id, contact_number) VALUES
(101, 'Cross and Sons Fresh Market', -48.730446, 25.378897, 8, '793-596-9004x960'),
(102, 'Franco, Phelps and Salas Fresh Market', 37.38037, -13.742948, 48, '262.312.8565x77115'),
(103, 'Vaughn, Harvey and Smith Fresh Market', 77.025539, 17.731111, 26, '001-510-015-6230'),
(104, 'Williams-Mckee Fresh Market', 55.725284, -65.707212, 20, '(337)899-8717x68037');

SELECT * FROM customers_extended_data;

INSERT INTO updated_inventory_fresh_new_data (inventory_id, store_id, product_id, stock_quantity, reorder_threshold) VALUES
(5001, 103, 209, 473, 23),
(5002, 102, 217, 69, 13),
(5003, 103, 208, 90, 14),
(5004, 101, 208, 263, 17),
(5005, 104, 214, 298, 6),
(5006, 101, 204, 333, 48),
(5007, 101, 214, 415, 30),
(5008, 101, 207, 130, 34),
(5009, 104, 216, 261, 9),
(5010, 102, 211, 322, 9),
(5011, 104, 208, 92, 36),
(5012, 102, 208, 431, 33),
(5013, 104, 202, 390, 12),
(5014, 101, 211, 72, 36),
(5015, 103, 205, 216, 40),
(5016, 101, 207, 225, 10),
(5017, 103, 209, 125, 31),
(5018, 103, 215, 121, 15),
(5019, 102, 219, 392, 10),
(5020, 102, 212, 185, 13),
(5021, 103, 206, 80, 20),
(5022, 102, 210, 353, 33),
(5023, 102, 218, 16, 23),
(5024, 103, 204, 261, 38),
(5025, 103, 219, 59, 16),
(5026, 101, 215, 298, 15),
(5027, 104, 203, 35, 31),
(5028, 103, 205, 481, 37),
(5029, 103, 219, 108, 13),
(5030, 101, 203, 450, 47),
(5031, 102, 204, 118, 49),
(5032, 101, 211, 428, 6),
(5033, 101, 204, 370, 22),
(5034, 104, 216, 305, 29),
(5035, 104, 206, 119, 16),
(5036, 101, 213, 309, 9),
(5037, 101, 203, 313, 32),
(5038, 102, 207, 461, 37),
(5039, 101, 216, 213, 22),
(5040, 101, 208, 317, 49),
(5041, 103, 212, 45, 7),
(5042, 101, 206, 488, 47),
(5043, 104, 213, 262, 40),
(5044, 101, 209, 155, 27),
(5045, 102, 203, 474, 43),
(5046, 101, 218, 415, 19),
(5047, 102, 217, 490, 22),
(5048, 101, 212, 298, 27),
(5049, 101, 204, 287, 19),
(5050, 103, 209, 368, 26),
(5051, 101, 205, 178, 17),
(5052, 102, 217, 292, 49),
(5053, 102, 218, 406, 5),
(5054, 103, 206, 49, 18),
(5055, 102, 208, 475, 6),
(5056, 103, 216, 459, 40),
(5057, 102, 215, 109, 8),
(5058, 104, 208, 296, 6),
(5059, 103, 208, 289, 7),
(5060, 103, 212, 412, 7),
(5061, 101, 204, 247, 37),
(5062, 101, 212, 171, 36),
(5063, 104, 219, 349, 49),
(5064, 102, 201, 250, 21),
(5065, 104, 208, 157, 7),
(5066, 101, 206, 272, 45),
(5067, 103, 218, 30, 39),
(5068, 102, 202, 258, 13),
(5069, 103, 205, 271, 11),
(5070, 102, 209, 170, 27),
(5071, 101, 214, 143, 45),
(5072, 101, 210, 18, 46),
(5073, 103, 205, 294, 27),
(5074, 101, 217, 175, 8),
(5075, 101, 213, 310, 31),
(5076, 104, 213, 289, 47),
(5077, 104, 217, 23, 26),
(5078, 101, 220, 459, 45),
(5079, 101, 203, 282, 36),
(5080, 102, 204, 165, 29),
(5081, 101, 201, 255, 39),
(5082, 102, 203, 204, 29),
(5083, 102, 201, 319, 28),
(5084, 101, 212, 360, 7),
(5085, 101, 216, 51, 43),
(5086, 104, 206, 413, 19),
(5087, 102, 217, 204, 38),
(5088, 104, 209, 222, 47),
(5089, 103, 213, 56, 11),
(5090, 101, 216, 302, 28),
(5091, 104, 209, 424, 33),
(5092, 102, 208, 258, 34),
(5093, 104, 204, 51, 30),
(5094, 101, 208, 261, 14),
(5095, 101, 209, 442, 19),
(5096, 103, 210, 347, 44),
(5097, 101, 213, 181, 32),
(5098, 104, 208, 315, 30),
(5099, 102, 209, 346, 19),
(5100, 103, 208, 277, 26);
-- import the file
BULK INSERT order_details_data
FROM 'C:\Users\LENOVO\Documents\M.Sc Business Analytics\Term 2\Database Technologies BEMM459\Group I Tables\order_details_data.xlsx';
WITH
(
        FORMAT='CSV',
)
GO

desc order_details_data;

sys.database_principals