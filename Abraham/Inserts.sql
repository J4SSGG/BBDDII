USE PRegistroAcademico
GO
INSERT INTO Horario VALUES
	(1, '07:00:00', '08:30:00'),
	(2, '08:40:00', '10:10:00'),
	(3, '10:40:00', '12:10:00'),
	(4, '12:20:00', '13:50:00'),
	(5, '14:20:00', '15:50:00'),
	(6, '15:50:00', '17:20:00'),
	(7, '17:30:00', '19:00:00'),
	(8, '19:30:00', '21:00:00')
GO
INSERT INTO Ciclo VALUES
	(1, 'Primer Ciclo 2018', 0),
	(2, 'Interciclo 2018', 0),
	(3, 'Segundo Ciclo 2018', 0),
	(4, 'Primer Ciclo 2019', 1),
	(5, 'Inteciclo 2019', 0),
	(6, 'Segundo Ciclo 2019', 0)
GO
INSERT INTO Facultad VALUES
	(1, 'Humanidades'),
	(2, 'Ingenier�a'),
	(3, 'Arquitectura y Dise�o'),
	(4, 'Ciencias Econ�micas y Empresariales'),
	(5, 'Ciencas Pol�ticas y Sociales'),
	(6, 'Ciencias Ambietales y Agr�colas'),
	(7, 'Ciencias de la Salud'),
	(8, 'Ciencias Jur�dicas y Sociales'),
	(9, 'Teolog�a')
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
	(20, 2, 'Licenciatura en Ingenier�a Inform�tica y Sistemas'),
	(21, 2, 'Licenciatura en Ingenier�a en Industria de Alimentos'),
	(22, 2, 'Licenciatura en Ingenier�a Qu�mica'),
	(23, 2, 'Licenciatura en Ingenier�a Qu�mica Industrial'),
	(24, 2, 'Licenciatura en Ingenier�a Industrial y de Sistemas'),
	(25, 2, 'Licenciatura en Ingenier�a Mec�nica'),
	(26, 2, 'Licenciatura en Ingenier�a Mec�nica Industrial'),
	(27, 2, 'Licenciatura en Ingenier�a Electr�nica y Telecomunicaciones'),
	(28, 2, 'Licenciatura en Ingenier�a Civil'),
	(29, 2, 'Licenciatura en Ingenier�a Civil Adminsitrativa'),
	(30, 3, 'Licenciatura en Arquitectura y Dise�o'),
	(31, 3, 'Licenciatura en Dise�o Gr�fico'),
	(32, 3, 'Licenciatura en Dise�o Industrial'),
	(40, 4, 'Licenciatura en Marketing'),
	(41, 4, 'Licenciatura en Econom�a Empresarial'),
	(42, 4, 'Licenciatura en Administraci�n de Hoteles y Restaurantes'),
	(43, 4, 'Licenciatura en Administracion de Empresas'),
	(44, 4, 'Licenciatura en Contadur�a Publica y Auditor�a'),
	(60, 6, 'Licenciatura en Ingenier�a Ambiental con enf�sis en Gesti�n'),
	(61, 6, 'Licenciatura en Ingenier�a Ambiental con enf�sis en Gerencia'),
	(80, 8, 'Licenciatura en Ciencias Jur�dicas y Sociales'),
	(81, 8, 'Licenciatura en Investigaci�n Criminal y Forense')

-- Esutidnate Carrera
INSERT INTO EstudianteCarrera Values
	(93616,10),
	(106426,11),
	(113523,12),
	(135019,13),
	(155111,14),
	(191436,15),
	(263457,20),
	(296534,21),
	(339389,22),
	(414831,23),
	(457782,24),
	(457955,25),
	(492928,26),
	(502056,27),
	(506346,28),
	(510249,29),
	(545152,30),
	(566754,31),
	(568277,32),
	(645852,40),
	(785723,41),
	(799872,42),
	(859893,43),
	(866826,44),
	(867448,50),
	(890710,51),
	(942501,60),
	(983435,61),
	(987714,70),
	(1085243,71),
	(1132441,72),
	(1136100,80),
	(1169254,81),
	(1215285,90),
	(1218807,10),
	(1361672,11),
	(1383982,12),
	(1386438,13),
	(1427671,14),
	(1437407,15),
	(1492125,20),
	(1550225,21),
	(1584117,22),
	(1646088,23),
	(1675256,24),
	(1714005,25),
	(1755606,26),
	(1797422,27),
	(1834523,28),
	(1874586,29),
	(1874653,30),
	(1888570,31),
	(1910277,32),
	(2076826,40),
	(2195312,41),
	(2210485,42),
	(2224548,43),
	(2226818,44),
	(2252094,50),
	(2287150,51),
	(2300662,60),
	(2337334,61),
	(2350723,70),
	(2352063,71),
	(2399418,72),
	(2430354,80),
	(2440071,81),
	(2518834,90),
	(2525676,10),
	(2560665,11),
	(2586883,12),
	(2623651,13),
	(2664604,14),
	(2665227,15),
	(2679425,20),
	(2685527,21),
	(2703874,22),
	(2722834,23),
	(2743594,24),
	(2755289,25),
	(2818085,26),
	(2821012,27),
	(2870728,28),
	(2881864,29),
	(2887545,30),
	(2968187,31),
	(2991075,32),
	(3046332,40),
	(3075631,41),
	(3119606,42),
	(3149847,43),
	(3226312,44),
	(3240892,50),
	(3242115,51),
	(3281472,60),
	(3283463,61),
	(3283551,70),
	(3286516,71),
	(3313954,72),
	(3342439,80),
	(3372970,81),
	(3374024,90),
	(3395660,10),
	(3397822,11),
	(3446497,12),
	(3504967,13),
	(3505461,14),
	(3507616,15),
	(3519128,20),
	(3531974,21),
	(3534363,22),
	(3556379,23),
	(3615986,24),
	(3621147,25),
	(3626819,26),
	(3656092,27),
	(3678818,28),
	(3692151,29),
	(3698693,30),
	(3700811,31),
	(3716649,32),
	(3821228,40),
	(3821675,41),
	(3863108,42),
	(3874318,43),
	(3883228,44),
	(3894399,50),
	(3919174,51),
	(3928624,60),
	(3969528,61),
	(3974776,70),
	(4008416,71),
	(4030782,72),
	(4074334,80),
	(4104395,81),
	(4142595,90),
	(4163422,10),
	(4262516,11),
	(4278047,12),
	(4313655,13),
	(4319649,14),
	(4351628,15),
	(4365649,20),
	(4535114,21),
	(4659291,22),
	(4667701,23),
	(4739261,24),
	(4741778,25),
	(4836291,26),
	(4916060,27),
	(4935486,28),
	(5101817,29),
	(5150798,30),
	(5171398,31),
	(5198547,32),
	(5235051,40),
	(5235726,41),
	(5252298,42),
	(5310649,43),
	(5331545,44),
	(5353001,50),
	(5360809,51),
	(5399489,60),
	(5423865,61),
	(5426217,70),
	(5449909,71),
	(5506021,72),
	(5533906,80),
	(5545521,81),
	(5571514,90),
	(5575681,10),
	(5611486,11),
	(5616936,12),
	(5655855,13),
	(5679906,14),
	(5728288,15),
	(5747517,20),
	(5769038,21),
	(5859814,22),
	(5876987,23),
	(5892269,24),
	(5929983,25),
	(5962143,26),
	(5978378,27),
	(6012077,28),
	(6046713,29),
	(6172333,30),
	(6184313,31),
	(6199012,32),
	(6235246,40),
	(6313802,41),
	(6317269,42),
	(6385526,43),
	(6555227,44),
	(6634798,50),
	(6641100,51),
	(6656851,60),
	(6659698,61),
	(6661276,70),
	(6686522,71),
	(6698054,72),
	(6704319,80),
	(6721861,81),
	(6733187,90),
	(6755731,10),
	(6772258,11),
	(6792770,12),
	(6806401,13),
	(6840084,14),
	(6888710,15),
	(6976181,20),
	(7105543,21),
	(7140881,22),
	(7155345,23),
	(7169075,24),
	(7195466,25),
	(7215254,26),
	(7252089,27),
	(7326194,28),
	(7389867,29),
	(7435457,30),
	(7456027,31),
	(7473270,32),
	(7494426,40),
	(7528516,41),
	(7607645,42),
	(7631581,43),
	(7633268,44),
	(7731713,50),
	(7733597,51),
	(7804667,60),
	(7839999,61),
	(7843218,70),
	(7852737,71),
	(7858703,72),
	(7870786,80),
	(7877538,81),
	(7884527,90),
	(7918383,10),
	(7972860,11),
	(7985899,12),
	(8008771,13),
	(8028091,14),
	(8039707,15),
	(8114511,20),
	(8165538,21),
	(8236631,22),
	(8243971,23),
	(8276418,24),
	(8295854,25),
	(8297778,26),
	(8301027,27),
	(8356439,28),
	(8358644,29),
	(8372058,30),
	(8386091,31),
	(8417422,32),
	(8493460,40),
	(8555319,41),
	(8631351,42),
	(8644261,43),
	(8668916,44),
	(8722675,50),
	(8744532,51),
	(8749669,60),
	(8802883,61),
	(8844798,70),
	(8913794,71),
	(8918888,72),
	(8992260,80),
	(9004510,81),
	(9016613,90),
	(9025172,10),
	(9038753,11),
	(9053130,12),
	(9061638,13),
	(9063677,14),
	(9073134,15),
	(9112313,20),
	(9115173,21),
	(9169563,22),
	(9181393,23),
	(9193582,24),
	(9305695,25),
	(9431622,26),
	(9433875,27),
	(9434360,28),
	(9475266,29),
	(9526940,30),
	(9574062,31),
	(9610681,32),
	(9638645,40),
	(9644778,41),
	(9677971,42),
	(9744972,43),
	(9790473,44),
	(9794372,50),
	(9857834,51),
	(9904061,60),
	(9992295,61)


-- Cursos


INSERT INTO Curso VALUES
	(1, 'Matem�tica I', 0),
	(2, 'Matem�tica II', 0),
	(3, 'C�lculo I', 0),
	(4, 'C�lculo II', 0),
	(5, 'C�lculo III', 0),
	(6, 'F�sica I', 1),
	(7, 'F�sica II', 1),
	(8, 'F�sica III', 1),
	(9, 'Econom�a I', 0),
	(10, 'Biolog�a I', 1),
	(11, 'Turismo Nacional', 1),
	(12, 'Derecho Romano', 0),
	(13, 'Contabilidad General', 1),
	(14, 'Gesti�n Empresarial', 0),
	(15, 'Programaci�n', 1),
	(16, 'Dise�o Art�stico I', 1),
	(18, 'Dise�o Art�stico II', 1),
	(26, 'Dibujo T�cnico', 1),
	(19, 'Animacion 2D', 1),
	(20, 'Religiones', 0),
	(21, 'Filosf�a Griega', 0),
	(22, 'Magis Landivariano', 0),
	(23, 'Pedagog�a', 0),
	(24, 'Psicolog�a del Color', 0),
	(25, 'Producci�n Sostenible', 0)


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

-- CICLO
