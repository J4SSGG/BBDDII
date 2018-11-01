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
	(1, 'Primer Ciclo 2018'),
	(2, 'Interciclo 2018'),
	(3, 'Segundo Ciclo 2018'),
	(4, 'Primer Ciclo 2019'),
	(5, 'Inteciclo 2019'),
	(6, 'Segundo Ciclo 2019')
GO
INSERT INTO Facultad VALUES
	(1, 'Humanidades'),
	(2, 'Ingeniería'),
	(3, 'Arquitectura y Diseño'),
	(4, 'Ciencias Económicas y Empresariales'),
	(5, 'Ciencas Políticas y Sociales'),
	(6, 'Ciencias Ambietales y Agrícolas'),
	(7, 'Ciencias de la Salud'),
	(8, 'Ciencias Jurídicas y Sociales'),
	(9, 'Teología')
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
--- Carrera

INSERT INTO Carrera VALUES
	(20, 2, 'Licenciatura en Ingeniería Informática y Sistemas'),
	(21, 2, 'Licenciatura en Ingeniería en Industria de Alimentos'),
	(22, 2, 'Licenciatura en Ingeniería Química'),
	(23, 2, 'Licenciatura en Ingeniería Química Industrial'),
	(24, 2, 'Licenciatura en Ingeniería Industrial y de Sistemas'),
	(25, 2, 'Licenciatura en Ingeniería Mecánica'),
	(26, 2, 'Licenciatura en Ingeniería Mecánica Industrial'),
	(27, 2, 'Licenciatura en Ingeniería Electrónica y Telecomunicaciones'),
	(28, 2, 'Licenciatura en Ingeniería Civil'),
	(29, 2, 'Licenciatura en Ingeniería Civil Adminsitrativa'),
	(30, 3, 'Licenciatura en Arquitectura y Diseño'),
	(31, 3, 'Licenciatura en Diseño Gráfico'),
	(32, 3, 'Licenciatura en Diseño Industrial'),
	(40, 4, 'Licenciatura en Marketing'),
	(41, 4, 'Licenciatura en Economía Empresarial'),
	(42, 4, 'Licenciatura en Administración de Hoteles y Restaurantes'),
	(43, 4, 'Licenciatura en Administracion de Empresas'),
	(44, 4, 'Licenciatura en Contaduría Publica y Auditoría'),
	(60, 6, 'Licenciatura en Ingeniería Ambiental con enfásis en Gestión'),
	(61, 6, 'Licenciatura en Ingeniería Ambiental con enfásis en Gerencia'),
	(80, 8, 'Licenciatura en Ciencias Jurídicas y Sociales'),
	(81, 8, 'Licenciatura en Investigación Criminal y Forense')