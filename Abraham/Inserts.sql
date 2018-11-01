USE PRegistroAcademico
GO
INSERT INTO Horario VALUES
	('07:00:00', '08:30:00'),
	('08:40:00', '10:10:00'),
	('10:40:00', '12:10:00'),
	('12:20:00', '13:50:00'),
	('14:20:00', '15:50:00'),
	('15:50:00', '17:20:00'),
	('17:30:00', '19:00:00'),
	('19:30:00', '21:00:00')
GO
INSERT INTO Ciclo VALUES
	('Primer Ciclo 2018', 0),
	('Interciclo 2018', 0),
	('Segundo Ciclo 2018', 0),
	('Primer Ciclo 2019', 1),
	('Inteciclo 2019', 0),
	('Segundo Ciclo 2019', 0)
GO
INSERT INTO Facultad VALUES
	('Humanidades'),
	('Ingenier�a'),
	('Arquitectura y Dise�o'),
	('Ciencias Econ�micas y Empresariales'),
	('Ciencas Pol�ticas y Sociales'),
	('Ciencias Ambietales y Agr�colas'),
	('Ciencias de la Salud'),
	('Ciencias Jur�dicas y Sociales'),
	('Teolog�a')
GO

--- Estudiantes
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('5616936','Anthony Jerry','Decker Kinney'),('9115173','Richard Kenneth','Holland Martin'),('6313802','Nehru Kadeem','Zamora Rowe'),('5423865','Teagan Brenna','Hart Strickland'),('2076826','Ivan Jackson','Massey Randall'),('4319649','Liberty Natalie','Turner Norman'),('8844798','Ima Brenna','Weber Schultz'),('8918888','Stella Victoria','Rosa Shepard'),('9794372','Aretha Cassidy','Wells Sherman'),('1218807','Darius Russell','Daniels Villarreal');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('8555319','Germane Madeson','Stokes Franco'),('8417422','Cailin Amber','Potts Henson'),('2399418','Stone Raphael','Goodman Curtis'),('6888710','Carla Leslie','Mayer Moses'),('3242115','Mufutau Tobias','Mcfadden Clayton'),('9475266','Leroy Addison','Ramirez Lambert'),('2887545','Orli Josephine','Melendez Hobbs'),('8749669','Echo Frances','Baker Craft'),('1910277','Hayden Galvin','Tran Acevedo'),('3621147','Nasim Duncan','Faulkner Cobb');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('9744972','Meghan Vanna','Bradley Stark'),('4278047','Zephr Madeline','Buchanan Browning'),('5150798','Sophia Wilma','Mcmahon Mcpherson'),('9574062','Regina Gail','Clark Kidd'),('4365649','Tallulah Madeson','Logan Barry'),('3969528','Norman Kenneth','Mayo Meadows'),('3281472','Burke Nicholas','Meyers Bray'),('6656851','Jarrod Brady','Montgomery Mcdowell'),('8722675','Kendall Emma','Norris Head'),('1383982','Brandon Kareem','Madden Owens');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('3119606','Derek Lance','Hoffman Ford'),('0785723','Tanek Quamar','Montgomery Webster'),('8372058','Macy Petra','Sharp Oliver'),('1550225','Gemma Cora','Blackwell Bradshaw'),('2968187','Dante Rooney','Hansen Moody'),('8802883','Levi Brian','Webster Sargent'),('5545521','Zephania Travis','Guerrero Duffy'),('8992260','Selma Dawn','Weiss Clay'),('3883228','Matthew Harper','Barrera Wallace'),('9112313','Tana Vivien','Freeman Joyce');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('9063677','Ezra Sebastian','Rosa Turner'),('5449909','Carolyn Madaline','Ortega Ware'),('5235051','Leo Noble','Lambert Skinner'),('0492928','Lila Olivia','Velez Poole'),('5506021','Laith Gray','Flowers Hendrix'),('1136100','Kirestin Beatrice','Espinoza Massey'),('8356439','Stuart Xander','Smith Hardy'),('8276418','Raphael Christian','Estes Wynn'),('8008771','Mariam Myra','Cameron Eaton'),('4262516','Nicole Yoko','Ochoa Mcgee');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('2743594','Paula Alexandra','Bartlett Rosales'),('3149847','Gregory Trevor','Woods Rich'),('8744532','Sandra Lydia','Woodward Cooke'),('0191436','Bradley Kuame','Roy Potter'),('7972860','Dominic Ralph','Finley Best'),('6976181','Gail Adele','Little Aguilar'),('7456027','Gary George','Scott Cook'),('9004510','Rae Jorden','Wilkinson Gibson'),('3313954','Yardley Barclay','Mcintyre Velazquez'),('2300662','Kellie Alea','Kirkland Dixon');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('6733187','Andrew Justin','Randolph Burris'),('3046332','Warren Boris','Petty Wilder'),('3928624','Cadman Phelan','Burt Smith'),('4163422','Octavius Rogan','Williams Garza'),('5575681','Jocelyn Sacha','Slater Noel'),('3656092','Priscilla Regan','Pate Quinn'),('4739261','Russell Lucius','Roberson Pierce'),('3507616','Lev Avram','Franco Mccray'),('0457782','Raven Leigh','Dominguez Aguilar'),('3698693','Priscilla Xena','Blanchard Clayton');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('7843218','Xenos Hayden','Beasley Owens'),('0106426','Astra Quin','Blair Clements'),('0942501','Kibo Hakeem','Olsen Ortiz'),('5353001','Lucian Rogan','Mcpherson Richardson'),('9904061','Mia Shoshana','Curry Porter'),('6806401','Kamal Ferdinand','Zimmerman Sanders'),('9610681','Ayanna Melyssa','Patel Sheppard'),('3821228','Amos Tobias','Peterson Calderon'),('9638645','Edan Robert','Graves Vance'),('5235726','Yasir Addison','Peters Alvarez');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('1834523','Autumn Fiona','Walton Graves'),('2722834','Mechelle Kyla','Vazquez Cote'),('5426217','Lenore Karina','Parsons Horn'),('2881864','Darius Herrod','Workman Mcpherson'),('4008416','Ignatius Jordan','Perez Stevens'),('4836291','Xena Kiayada','Craig Barrett'),('8295854','Anastasia Colleen','Stein Durham'),('9992295','Bernard Thaddeus','Joyner Kidd'),('8631351','Stacy Jorden','Mcintyre Gardner'),('3519128','Dennis Quamar','Glenn Sutton');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('9073134','Macaulay Logan','Cunningham Hartman'),('9038753','Nasim Stewart','Fitzgerald Webster'),('5198547','Beck Conan','Woodward Farrell'),('3874318','Chancellor Richard','Carney Mckenzie'),('2337334','Aline Nevada','Holt Dixon'),('2991075','Brynne Sasha','Atkinson Washington'),('2755289','Wylie Hammett','Ramirez Rosario'),('0866826','Marvin Harlan','Goodman Frye'),('8913794','Jasmine Darrel','Watts Richmond'),('8668916','Charissa Stacy','Shepherd Mercer');

INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('6661276','Judah Stuart','Watts Blake'),('7918383','Isadora Cora','Ramirez Pierce'),('4030782','Micah Emmanuel','Morales Leach'),('6634798','Herman Fitzgerald','Lawson Compton'),('6704319','Gay Elizabeth','Mclaughlin Bailey'),('3446497','Danielle Nadine','Buck Hahn'),('3395660','Eden Maile','Hensley Hammond'),('0339389','Nadine Jamalia','Graham Weiss'),('5101817','Mohammad Noble','Dixon Goodwin'),('0502056','Diana Jana','Hayden Fowler');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('2665227','Helen Myra','Reynolds Rose'),('3397822','Amos Kuame','Gilbert Payne'),('3075631','Nevada Kerry','Roman Frederick'),('0566754','Ora Beverly','Fox English'),('2525676','Leo Upton','Kelly Blankenship'),('7326194','Lillian Amy','Casey Bailey'),('3504967','Kaitlin Cara','Clarke Martinez'),('6641100','Caleb Ulysses','Steele Puckett'),('4535114','Felix Hayes','Mitchell Golden'),('7633268','Beau Hasad','Olson Boone');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('7884527','Kaye Mariko','Peterson Stanley'),('7435457','Pearl Orla','Monroe Berg'),('1584117','Iris Juliet','Stevens Salinas'),('8301027','Hop Raja','Lopez Collier'),('5331545','Dolan Christian','Gray Gilbert'),('9431622','Meghan Whitney','Hutchinson Greer'),('5310649','Tobias Kenyon','Cash Boyle'),('0510249','Candace Alexis','Madden Guy'),('7105543','Reese Ronan','Munoz Watkins'),('8114511','Teegan Astra','Ross Bass');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('0645852','Keane Clark','Brady Terrell'),('1755606','Ulric Hall','Savage Massey'),('5929983','Ramona Lilah','Snider England'),('6772258','Caleb Zahir','Mckinney Hayes'),('7140881','Stone Adrian','Parsons Sweet'),('7389867','Ishmael Jasper','Richmond Roberts'),('2818085','Benedict Malcolm','Hebert Shelton'),('4313655','Russell Brock','Ferguson Whitfield'),('0093616','Karina Lael','Bates Mcintosh'),('0859893','Hilda Christen','Bradshaw Charles');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('7631581','Dane Arthur','Duran Roach'),('7852737','Nina Remedios','Underwood Livingston'),('8297778','Quinn Prescott','Carter Roth'),('8039707','Catherine Kyla','Cross Glass'),('5171398','Allistair Uriel','Poole Sims'),('2210485','Daniel Marvin','Page Jarvis'),('4351628','Medge Destiny','Herring Barker'),('0135019','Carolyn Hilary','Burke Lawrence'),('6385526','Oliver Jack','Orr Rodgers'),('6012077','Nichole Robin','Raymond Hale');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('0263457','Quyn Winifred','Spears Morris'),('2440071','Price Patrick','Pope Villarreal'),('8644261','Malik Julian','Gentry Shields'),('6555227','Kane Mohammad','Ross Delacruz'),('9433875','Whilemina Quincy','Kerr Villarreal'),('2586883','Gregory Kermit','Wood Hansen'),('7252089','Louis Boris','Bridges Tillman'),('9644778','Ginger Pamela','Valentine Acosta'),('3678818','Karleigh Leila','Nelson Guy'),('2560665','Gay Madonna','Rasmussen Wells');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('3716649','Renee Shafira','Potts Mosley'),('8028091','Caldwell Cody','Adkins Marshall'),('0155111','Chancellor Brett','Rodgers Mcgowan'),('2870728','Winter Avye','Buck Acosta'),('5769038','Jared Honorato','Barr Church'),('7877538','Mira Iola','Horton Walsh'),('1427671','Vielka Bethany','Yang Bishop'),('3372970','Holly Keely','Chan Atkins'),('9857834','Lani Jaden','Woodard Mueller'),('5360809','Igor Aladdin','Crawford Ward');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('1169254','Alan Cole','Buckley Rice'),('4659291','Hedley Nolan','Franks Todd'),('2664604','Cameron Raja','Kelly Vasquez'),('9169563','Allistair Xenos','Joyce Alford'),('1797422','Beau Travis','Good Kaufman'),('7607645','Yuri Amelia','Hickman Dixon'),('0113523','Hoyt Elijah','Ochoa Carr'),('0457955','Samantha Fatima','Norman Santos'),('4667701','Timothy Jason','Sampson Huff'),('0890710','Ila Kylee','Davis Franklin');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('0568277','Lawrence Melvin','Cooley Walter'),('7169075','Larissa Ramona','Robinson Parker'),('5747517','Cora Irene','Riley Norton'),('9016613','Kadeem Kuame','Mathews Barron'),('7870786','Graham Benedict','Roberson Richardson'),('6721861','Rigel Bradley','Greene George'),('6659698','Graiden Colorado','Delacruz Walter'),('3283551','Chaney Mufutau','Hays Villarreal'),('6698054','Octavia Ella','Kramer Randolph'),('9305695','Ulysses Dylan','Page Leon');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('3374024','Naomi Maya','Dunn Whitney'),('2352063','Glenna Camilla','Fernandez Mcgee'),('2703874','Pascale Darryl','Beach Casey'),('3821675','Tucker Hilel','Austin Sanford'),('3615986','Judah Vladimir','Hampton Moreno'),('5892269','Martin Noble','Palmer Calderon'),('1386438','Meredith Karleigh','Gould Copeland'),('3505461','Yoko Casey','Byrd Zamora'),('3919174','Lee Kylan','Waller Morgan'),('0545152','Tamara Marcia','Bates Barrett');

INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('3240892','Victoria TaShya','Gordon Vaughan'),('2226818','Danielle Veronica','Figueroa Lloyd'),('7473270','Jeanette Whilemina','Schwartz Chambers'),('1874653','Hoyt Honorato','Conner Atkins'),('3286516','Dean Jesse','Ingram Wiggins'),('0983435','Herrod Rudyard','Mills Sanchez'),('1437407','Drew Kaseem','Craig Myers'),('5252298','Zorita Quon','Chang Roberts'),('7804667','Malcolm Lee','Soto Bolton'),('2685527','Kitra Emerald','Buck Shaffer');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('0867448','Angela Amber','Pierce Barry'),('5859814','Brett Brendan','Norman Sellers'),('7985899','Alma Catherine','Payne Walls'),('5571514','Brandon Moses','Simmons Hawkins'),('2224548','Lavinia Bree','Lawson Hudson'),('3342439','Eleanor Britanni','Green Lamb'),('1675256','Ryan Ezra','Riley Sullivan'),('5399489','Alexander Boris','Carr Marsh'),('7215254','Dalton Tucker','Burnett Casey'),('6840084','Zenia Joelle','Benjamin Benson');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('0987714','Ali Judah','Cervantes Waller'),('3894399','Benjamin Denton','Cummings Holt'),('0296534','Calista TaShya','Jimenez Yates'),('8243971','Mary Tashya','Stone Curry'),('6172333','Rhea Adele','Garcia Martinez'),('4935486','Damian Erich','Brennan Munoz'),('2518834','Miriam Courtney','Hewitt Contreras'),('6199012','Adria Jena','Mercado Underwood'),('2821012','Baxter Boris','Benson Burton'),('6317269','Dillon Denton','Vang Justice');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('3283463','Buckminster Grady','Ramirez Hale'),('9181393','Jessamine Ina','Warren Willis'),('3531974','Aristotle Colton','Stevenson Mcfadden'),('1215285','Laith Christian','Cooley Foster'),('1492125','Wallace Hector','Weeks Carpenter'),('0414831','Cynthia Jolene','Beard Morse'),('4741778','Elijah Otto','Arnold Serrano'),('1132441','Lacy Rae','Nelson Duffy'),('6046713','Owen Orlando','Hamilton Roth'),('3534363','Gabriel Acton','Forbes Fuller');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('6235246','Amery Malcolm','Riddle Curry'),('2252094','Harrison Reed','Wolfe Tran'),('5655855','Griffith Gary','Stewart Prince'),('9677971','Lucas Drake','Chase Larson'),('9790473','Mallory Shannon','Jimenez Dalton'),('1361672','Castor Neil','Chang Roth'),('7731713','Maris Charlotte','Kaufman Snow'),('5876987','Rae Wynne','Harmon Hopper'),('9193582','Thane Mark','Jenkins Copeland'),('9434360','Gemma Lois','Manning Lucas');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('7839999','Clementine Maia','Vasquez Gardner'),('3863108','Vladimir Vaughan','Goff Petersen'),('3700811','Raja Jin','Mcguire Mcintyre'),('7733597','Keith Ferris','Gibbs Vang'),('3556379','Kaye Helen','Hinton Langley'),('6755731','Zelda Ciara','Mosley Hanson'),('9526940','Grady Reese','Conrad Barton'),('7858703','Amos Harrison','Molina Vaughan'),('7195466','Brielle Kylie','Miranda Rosales'),('5611486','Rogan Steven','Battle Hicks');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('3626819','Ivory Aphrodite','Munoz Fitzgerald'),('1874586','Lila MacKenzie','Holloway Curtis'),('2195312','Tallulah Chelsea','Bauer Burton'),('6792770','Alvin Kieran','Mcgowan Delaney'),('4142595','Jonah Hyatt','Durham Cooke'),('4104395','Fulton Palmer','Cantu Solis'),('8236631','Shay Libby','Elliott Williamson'),('1646088','Hedda Nomlanga','Suarez Day'),('4916060','Daphne Celeste','Skinner Frye'),('0506346','Lyle Kennedy','Estrada Terry');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('2287150','Melvin Forrest','Collins Clay'),('0799872','Hall Rooney','Weber Patel'),('1085243','Kasimir Drake','Torres Roy'),('5679906','Gretchen Julie','Benson Lopez'),('8493460','Herman Kenyon','Keller Beck'),('2430354','Fatima Dahlia','Ramsey Underwood'),('6184313','Leila Rana','Wynn Stevens'),('1714005','Nayda Quynn','Hancock Kinney'),('9025172','Nola Callie','Nelson Stephens'),('6686522','Kirby Yetta','Gardner Floyd');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('5962143','Darrel Debra','Conway Knox'),('3226312','Keane Oleg','Mercer Carter'),('5728288','Beck Thor','Pittman Larson'),('5533906','Octavius Denton','Ballard Mays'),('8386091','Zorita Mariam','Mullen Goodwin'),('2623651','Colton Sawyer','West Daniel'),('7528516','Ocean Hilda','Boyer Montgomery'),('1888570','Bree Beverly','Torres Dominguez'),('7494426','Reuben Edward','Gray Wilkinson'),('4074334','Miriam Emi','Salas Leonard');
INSERT INTO estudiante([carnet],[nombres],[apellidos]) VALUES('8358644','Gemma Mona','Wolf Baxter'),('7155345','Slade Wylie','Fernandez Alford'),('3692151','Maisie Quyn','Higgins Gentry'),('9061638','Lionel Ryder','Hammond Bowen'),('3974776','Aline Aubrey','Wolfe Hampton'),('9053130','Tamara Catherine','Orr Horton'),('2679425','Giacomo Rigel','Wilkerson Justice'),('8165538','Quinn Sybil','Mays Hunt'),('2350723','Robin Anastasia','Clay Freeman'),('5978378','Logan Myles','Mendez Foreman');

--- Carrera

INSERT INTO Carrera VALUES
	(2, 'Licenciatura en Ingenier�a Inform�tica y Sistemas'),
	(2, 'Licenciatura en Ingenier�a en Industria de Alimentos'),
	(2, 'Licenciatura en Ingenier�a Qu�mica'),
	(2, 'Licenciatura en Ingenier�a Qu�mica Industrial'),
	(2, 'Licenciatura en Ingenier�a Industrial y de Sistemas'),
	(2, 'Licenciatura en Ingenier�a Mec�nica'),
	(2, 'Licenciatura en Ingenier�a Mec�nica Industrial'),
	(2, 'Licenciatura en Ingenier�a Electr�nica y Telecomunicaciones'),
	(2, 'Licenciatura en Ingenier�a Civil'),
	(2, 'Licenciatura en Ingenier�a Civil Adminsitrativa'),
	(3, 'Licenciatura en Arquitectura y Dise�o'),
	(3, 'Licenciatura en Dise�o Gr�fico'),
	(3, 'Licenciatura en Dise�o Industrial'),
	(4, 'Licenciatura en Marketing'),
	(4, 'Licenciatura en Econom�a Empresarial'),
	(4, 'Licenciatura en Administraci�n de Hoteles y Restaurantes'),
	(4, 'Licenciatura en Administracion de Empresas'),
	(4, 'Licenciatura en Contadur�a Publica y Auditor�a'),
	(6, 'Licenciatura en Ingenier�a Ambiental con enf�sis en Gesti�n'),
	(6, 'Licenciatura en Ingenier�a Ambiental con enf�sis en Gerencia'),
	(8, 'Licenciatura en Ciencias Jur�dicas y Sociales'),
	(8, 'Licenciatura en Investigaci�n Criminal y Forense')

-- Esutidnate Carrera
INSERT INTO EstudianteCarrera Values
(93616,1),
(106426,2),
(113523,3),
(135019,4),
(155111,5),
(191436,6),
(263457,7),
(296534,8),
(339389,9),
(414831,10),
(457782,11),
(457955,12),
(492928,13),
(502056,14),
(506346,15),
(510249,16),
(545152,17),
(566754,18),
(568277,19),
(645852,20),
(785723,21),
(799872,22),
(859893,23),
(866826,24),
(867448,25),
(890710,26),
(942501,27),
(983435,28),
(987714,29),
(1085243,30),
(1132441,31),
(1136100,32),
(1169254,33),
(1215285,34),
(1218807,1),
(1361672,2),
(1383982,3),
(1386438,4),
(1427671,5),
(1437407,6),
(1492125,7),
(1550225,8),
(1584117,9),
(1646088,10),
(1675256,11),
(1714005,12),
(1755606,13),
(1797422,14),
(1834523,15),
(1874586,16),
(1874653,17),
(1888570,18),
(1910277,19),
(2076826,20),
(2195312,21),
(2210485,22),
(2224548,23),
(2226818,24),
(2252094,25),
(2287150,26),
(2300662,27),
(2337334,28),
(2350723,29),
(2352063,30),
(2399418,31),
(2430354,32),
(2440071,33),
(2518834,34),
(2525676,1),
(2560665,2),
(2586883,3),
(2623651,4),
(2664604,5),
(2665227,6),
(2679425,7),
(2685527,8),
(2703874,9),
(2722834,10),
(2743594,11),
(2755289,12),
(2818085,13),
(2821012,14),
(2870728,15),
(2881864,16),
(2887545,17),
(2968187,18),
(2991075,19),
(3046332,20),
(3075631,21),
(3119606,22),
(3149847,23),
(3226312,24),
(3240892,25),
(3242115,26),
(3281472,27),
(3283463,28),
(3283551,29),
(3286516,30),
(3313954,31),
(3342439,32),
(3372970,33),
(3374024,34),
(3395660,1),
(3397822,2),
(3446497,3),
(3504967,4),
(3505461,5),
(3507616,6),
(3519128,7),
(3531974,8),
(3534363,9),
(3556379,10),
(3615986,11),
(3621147,12),
(3626819,13),
(3656092,14),
(3678818,15),
(3692151,16),
(3698693,17),
(3700811,18),
(3716649,19),
(3821228,20),
(3821675,21),
(3863108,22),
(3874318,23),
(3883228,24),
(3894399,25),
(3919174,26),
(3928624,27),
(3969528,28),
(3974776,29),
(4008416,30),
(4030782,31),
(4074334,32),
(4104395,33),
(4142595,34),
(4163422,1),
(4262516,2),
(4278047,3),
(4313655,4),
(4319649,5),
(4351628,6),
(4365649,7),
(4535114,8),
(4659291,9),
(4667701,10),
(4739261,11),
(4741778,12),
(4836291,13),
(4916060,14),
(4935486,15),
(5101817,16),
(5150798,17),
(5171398,18),
(5198547,19),
(5235051,20),
(5235726,21),
(5252298,22),
(5310649,23),
(5331545,24),
(5353001,25),
(5360809,26),
(5399489,27),
(5423865,28),
(5426217,29),
(5449909,30),
(5506021,31),
(5533906,32),
(5545521,33),
(5571514,34),
(5575681,1),
(5611486,2),
(5616936,3),
(5655855,4),
(5679906,5),
(5728288,6),
(5747517,7),
(5769038,8),
(5859814,9),
(5876987,10),
(5892269,11),
(5929983,12),
(5962143,13),
(5978378,14),
(6012077,15),
(6046713,16),
(6172333,17),
(6184313,18),
(6199012,19),
(6235246,20),
(6313802,21),
(6317269,22),
(6385526,23),
(6555227,24),
(6634798,25),
(6641100,26),
(6656851,27),
(6659698,28),
(6661276,29),
(6686522,30),
(6698054,31),
(6704319,32),
(6721861,33),
(6733187,34),
(6755731,1),
(6772258,2),
(6792770,3),
(6806401,4),
(6840084,5),
(6888710,6),
(6976181,7),
(7105543,8),
(7140881,9),
(7155345,10),
(7169075,11),
(7195466,12),
(7215254,13),
(7252089,14),
(7326194,15),
(7389867,16),
(7435457,17),
(7456027,18),
(7473270,19),
(7494426,20),
(7528516,21),
(7607645,22),
(7631581,23),
(7633268,24),
(7731713,25),
(7733597,26),
(7804667,27),
(7839999,28),
(7843218,29),
(7852737,30),
(7858703,31),
(7870786,32),
(7877538,33),
(7884527,34),
(7918383,1),
(7972860,2),
(7985899,3),
(8008771,4),
(8028091,5),
(8039707,6),
(8114511,7),
(8165538,8),
(8236631,9),
(8243971,10),
(8276418,11),
(8295854,12),
(8297778,13),
(8301027,14),
(8356439,15),
(8358644,16),
(8372058,17),
(8386091,18),
(8417422,19),
(8493460,20),
(8555319,21),
(8631351,22),
(8644261,23),
(8668916,24),
(8722675,25),
(8744532,26),
(8749669,27),
(8802883,28),
(8844798,29),
(8913794,30),
(8918888,31),
(8992260,32),
(9004510,33),
(9016613,34),
(9025172,1),
(9038753,2),
(9053130,3),
(9061638,4),
(9063677,5),
(9073134,6),
(9112313,7),
(9115173,8),
(9169563,9),
(9181393,10),
(9193582,11),
(9305695,12),
(9431622,13),
(9433875,14),
(9434360,15),
(9475266,16),
(9526940,17),
(9574062,18),
(9610681,19),
(9638645,20),
(9644778,21),
(9677971,22),
(9744972,23),
(9790473,24),
(9794372,25),
(9857834,26),
(9904061,27),
(9992295,28)



-- Cursos


INSERT INTO Curso VALUES
	('Matem�tica I', 0),
	('Matem�tica II', 0),
	('C�lculo I', 0),
	('C�lculo II', 0),
	('C�lculo III', 0),
	('F�sica I', 1),
	('F�sica II', 1),
	('F�sica III', 1),
	('Econom�a I', 0),
	('Biolog�a I', 1),
	('Turismo Nacional', 1),
	('Derecho Romano', 0),
	('Contabilidad General', 1),
	('Gesti�n Empresarial', 0),
	('Programaci�n', 1),
	('Dise�o Art�stico I', 1),
	('Dise�o Art�stico II', 1),
	('Dibujo T�cnico', 1),
	('Animacion 2D', 1),
	('Religiones', 0),
	('Filosf�a Griega', 0),
	('Magis Landivariano', 0),
	('Pedagog�a', 0),
	('Psicolog�a del Color', 0),
	('Producci�n Sostenible', 0)


-- Asignaciones
INSERT INTO Asignacion Values
	('2018-11-01T00:07:00', '2018-11-01T00:12:00', 1, 1),
	('2018-11-01T00:07:00', '2019-11-01T00:12:00', 2, 4),
	('2018-11-01T00:07:00', '2018-11-01T00:12:00', 3, 1),
	('2018-11-01T00:07:00', '2018-11-01T00:12:00', 4, 1),
	('2018-11-01T00:07:00', '2018-11-01T00:12:00', 5, 1),
	('2018-11-01T00:07:00', '2018-11-01T00:12:00', 6, 1),
	('2018-11-01T00:07:00', '2018-11-01T00:12:00', 7, 1),
	('2018-11-01T00:07:00', '2018-11-01T00:12:00', 8, 1),
	('2018-11-01T00:07:00', '2018-11-01T00:12:00', 9, 1)

-- Cuenta Corriente

INSERT INTO CuentaCorriente Values
	(93616,0),
	(106426,0),
	(113523,0),
	(135019,1),
	(155111,0),
	(191436,0),
	(263457,1),
	(296534,1),
	(339389,0),
	(414831,0),
	(457782,0),
	(457955,1),
	(492928,0),
	(502056,0),
	(506346,1),
	(510249,1),
	(545152,0),
	(566754,0),
	(568277,0),
	(645852,1),
	(785723,0),
	(799872,0),
	(859893,1),
	(866826,1),
	(867448,0),
	(890710,0),
	(942501,0),
	(983435,1),
	(987714,0),
	(1085243,0),
	(1132441,1),
	(1136100,1),
	(1169254,0),
	(1215285,0),
	(1218807,0),
	(1361672,1),
	(1383982,0),
	(1386438,0),
	(1427671,1),
	(1437407,1),
	(1492125,0),
	(1550225,0),
	(1584117,0),
	(1646088,1),
	(1675256,0),
	(1714005,0),
	(1755606,1),
	(1797422,1),
	(1834523,0),
	(1874586,0),
	(1874653,0),
	(1888570,1),
	(1910277,0),
	(2076826,0),
	(2195312,1),
	(2210485,1),
	(2224548,0),
	(2226818,0),
	(2252094,0),
	(2287150,1),
	(2300662,0),
	(2337334,0),
	(2350723,1),
	(2352063,1),
	(2399418,0),
	(2430354,0),
	(2440071,0),
	(2518834,1),
	(2525676,0),
	(2560665,0),
	(2586883,1),
	(2623651,1),
	(2664604,0),
	(2665227,0),
	(2679425,0),
	(2685527,1),
	(2703874,0),
	(2722834,0),
	(2743594,1),
	(2755289,1),
	(2818085,0),
	(2821012,0),
	(2870728,0),
	(2881864,1),
	(2887545,0),
	(2968187,0),
	(2991075,1),
	(3046332,1),
	(3075631,0),
	(3119606,0),
	(3149847,0),
	(3226312,1),
	(3240892,0),
	(3242115,0),
	(3281472,1),
	(3283463,1),
	(3283551,0),
	(3286516,0),
	(3313954,0),
	(3342439,1),
	(3372970,0),
	(3374024,0),
	(3395660,1),
	(3397822,1),
	(3446497,0),
	(3504967,0),
	(3505461,0),
	(3507616,1),
	(3519128,0),
	(3531974,0),
	(3534363,1),
	(3556379,1),
	(3615986,0),
	(3621147,0),
	(3626819,0),
	(3656092,1),
	(3678818,0),
	(3692151,0),
	(3698693,1),
	(3700811,1),
	(3716649,0),
	(3821228,0),
	(3821675,0),
	(3863108,1),
	(3874318,0),
	(3883228,0),
	(3894399,1),
	(3919174,1),
	(3928624,0),
	(3969528,0),
	(3974776,0),
	(4008416,1),
	(4030782,0),
	(4074334,0),
	(4104395,1),
	(4142595,1),
	(4163422,0),
	(4262516,0),
	(4278047,0),
	(4313655,1),
	(4319649,0),
	(4351628,0),
	(4365649,1),
	(4535114,1),
	(4659291,0),
	(4667701,0),
	(4739261,0),
	(4741778,1),
	(4836291,0),
	(4916060,0),
	(4935486,1),
	(5101817,1),
	(5150798,0),
	(5171398,0),
	(5198547,0),
	(5235051,1),
	(5235726,0),
	(5252298,0),
	(5310649,1),
	(5331545,1),
	(5353001,0),
	(5360809,0),
	(5399489,0),
	(5423865,1),
	(5426217,0),
	(5449909,0),
	(5506021,1),
	(5533906,1),
	(5545521,0),
	(5571514,0),
	(5575681,0),
	(5611486,1),
	(5616936,0),
	(5655855,0),
	(5679906,1),
	(5728288,1),
	(5747517,0),
	(5769038,0),
	(5859814,0),
	(5876987,1),
	(5892269,0),
	(5929983,0),
	(5962143,1),
	(5978378,1),
	(6012077,0),
	(6046713,0),
	(6172333,0),
	(6184313,1),
	(6199012,0),
	(6235246,0),
	(6313802,1),
	(6317269,1),
	(6385526,0),
	(6555227,0),
	(6634798,0),
	(6641100,1),
	(6656851,0),
	(6659698,0),
	(6661276,1),
	(6686522,1),
	(6698054,0),
	(6704319,0),
	(6721861,0),
	(6733187,1),
	(6755731,0),
	(6772258,0),
	(6792770,1),
	(6806401,1),
	(6840084,0),
	(6888710,0),
	(6976181,0),
	(7105543,1),
	(7140881,0),
	(7155345,0),
	(7169075,1),
	(7195466,1),
	(7215254,0),
	(7252089,0),
	(7326194,0),
	(7389867,1),
	(7435457,0),
	(7456027,0),
	(7473270,1),
	(7494426,1),
	(7528516,0),
	(7607645,0),
	(7631581,0),
	(7633268,1),
	(7731713,0),
	(7733597,0),
	(7804667,1),
	(7839999,1),
	(7843218,0),
	(7852737,0),
	(7858703,0),
	(7870786,1),
	(7877538,0),
	(7884527,0),
	(7918383,1),
	(7972860,1),
	(7985899,0),
	(8008771,0),
	(8028091,0),
	(8039707,1),
	(8114511,0),
	(8165538,0),
	(8236631,1),
	(8243971,1),
	(8276418,0),
	(8295854,0),
	(8297778,0),
	(8301027,1),
	(8356439,0),
	(8358644,0),
	(8372058,1),
	(8386091,1),
	(8417422,0),
	(8493460,0),
	(8555319,0),
	(8631351,1),
	(8644261,0),
	(8668916,0),
	(8722675,1),
	(8744532,1),
	(8749669,0),
	(8802883,0),
	(8844798,0),
	(8913794,1),
	(8918888,0),
	(8992260,0),
	(9004510,1),
	(9016613,1),
	(9025172,0),
	(9038753,0),
	(9053130,0),
	(9061638,1),
	(9063677,0),
	(9073134,0),
	(9112313,1),
	(9115173,1),
	(9169563,0),
	(9181393,0),
	(9193582,0),
	(9305695,1),
	(9431622,0),
	(9433875,0),
	(9434360,1),
	(9475266,1),
	(9526940,0),
	(9574062,0),
	(9610681,0),
	(9638645,1),
	(9644778,0),
	(9677971,0),
	(9744972,1),
	(9790473,1),
	(9794372,0),
	(9857834,0),
	(9904061,0),
	(9992295,1)
	

-- PRERREQUISITOS
INSERT INTO Prerrequisito values
	(2,  1),
	(3,  2),
	(4,  3),
	(5,  4),
	(6,  1),
	(7,  6),
	(8,  7),
	(18, 16),
	(7, 3),
	(8, 4 )