# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

clients = [
	{'name': 'Mona U. Lane', 'created_by': 1, 'updated_by': 1},
	{'name': 'Jeanette F. Macdonald', 'created_by': 1, 'updated_by': 1},
	{'name': 'Nina C. Kane', 'created_by': 1, 'updated_by': 1},
	{'name': 'Ima A. Farmer', 'created_by': 1, 'updated_by': 1},
	{'name': 'Hollee V. Macdonald', 'created_by': 1, 'updated_by': 1},
	{'name': 'Martin J. Merrill', 'created_by': 1, 'updated_by': 1},
	{'name': 'Bruce P. Gibson', 'created_by': 1, 'updated_by': 1},
	{'name': 'Xenos O. Rich', 'created_by': 1, 'updated_by': 1},
	{'name': 'Minerva T. Abbott', 'created_by': 1, 'updated_by': 1},
	{'name': 'Clarke D. Kennedy', 'created_by': 1, 'updated_by': 1},
	{'name': 'Stacey V. Witt', 'created_by': 1, 'updated_by': 1},
	{'name': 'Aphrodite Z. Keith', 'created_by': 1, 'updated_by': 1},
	{'name': 'Thaddeus V. Wilkins', 'created_by': 1, 'updated_by': 1},
	{'name': 'Dennis J. Melton', 'created_by': 1, 'updated_by': 1},
	{'name': 'Cullen K. Sellers', 'created_by': 1, 'updated_by': 1},
	{'name': 'Branden O. Donovan', 'created_by': 1, 'updated_by': 1},
	{'name': 'Rafael I. Hamilton', 'created_by': 1, 'updated_by': 1},
	{'name': 'Kylee K. Roberson', 'created_by': 1, 'updated_by': 1},
	{'name': 'Wang X. Bradford', 'created_by': 1, 'updated_by': 1},
	{'name': 'Adam A. Hays', 'created_by': 1, 'updated_by': 1}
];

locations = [
	{'name': 'Ap #404-7680 Id, Av.', 'zip': '52151', 'client_id': 15, 'created_by': 1, 'updated_by': 1},
	{'name': '714-4852 Neque St.', 'zip': '92717', 'client_id': 12, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #258-8317 Auctor, Ave', 'zip': '70672', 'client_id': 10, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #257-889 Enim. St.', 'zip': '22217', 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	{'name': '7402 Mollis Road', 'zip': '12204', 'client_id': 15, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 430, 3669 Nisi. Street', 'zip': '51193', 'client_id': 10, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #175-1026 Placerat Road', 'zip': '64295', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 507, 2874 Mi, Av.', 'zip': '59301', 'client_id': 9, 'created_by': 1, 'updated_by': 1},
	{'name': '392-6741 Faucibus Rd.', 'zip': '85396', 'client_id': 9, 'created_by': 1, 'updated_by': 1},
	{'name': '4190 Enim Road', 'zip': '79459', 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	{'name': '682-2834 Ultrices Road', 'zip': '76541', 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #329-1925 Enim. Avenue', 'zip': '39536', 'client_id': 10, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 665, 4910 Nunc Avenue', 'zip': '11119', 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'name': '777-1389 Ligula. Rd.', 'zip': '5100', 'client_id': 7, 'created_by': 1, 'updated_by': 1},
	{'name': '3417 Lorem. Ave', 'zip': '85234', 'client_id': 7, 'created_by': 1, 'updated_by': 1},
	{'name': '7901 Proin St.', 'zip': '38304', 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	{'name': '1753 Est. St.', 'zip': '39759', 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	{'name': '454-6132 Neque Av.', 'zip': '21908', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 711, 9550 Elit Avenue', 'zip': '62072', 'client_id': 8, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 516, 3378 Lectus. Street', 'zip': '12443', 'client_id': 1, 'created_by': 1, 'updated_by': 1},
	{'name': '7140 Pellentesque, Rd.', 'zip': '30044', 'client_id': 10, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 356, 9124 Sed Ave', 'zip': '46456', 'client_id': 14, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #664-2180 Vestibulum Rd.', 'zip': '72093', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': '2891 Mattis Street', 'zip': '51512', 'client_id': 14, 'created_by': 1, 'updated_by': 1},
	{'name': '5190 Hendrerit Road', 'zip': '70531', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': '8361 Scelerisque Rd.', 'zip': '48936', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #910-145 Sagittis Rd.', 'zip': '30707', 'client_id': 15, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 556, 3560 Mauris. Av.', 'zip': '68473', 'client_id': 8, 'created_by': 1, 'updated_by': 1},
	{'name': '5136 Eu Rd.', 'zip': '31536', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #859-938 Ligula. Rd.', 'zip': '99310', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #156-7408 Nulla. Street', 'zip': '78100', 'client_id': 15, 'created_by': 1, 'updated_by': 1},
	{'name': '9503 Amet Ave', 'zip': '29182', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': '186-4798 Justo Av.', 'zip': '60514', 'client_id': 9, 'created_by': 1, 'updated_by': 1},
	{'name': '200-1503 Sed St.', 'zip': '11407', 'client_id': 14, 'created_by': 1, 'updated_by': 1},
	{'name': '2338 Quam Road', 'zip': '96054', 'client_id': 15, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 186, 7166 Ipsum. Ave', 'zip': '21225', 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #277-7512 Nunc Street', 'zip': '71786', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 228, 5743 Conubia St.', 'zip': '19994', 'client_id': 6, 'created_by': 1, 'updated_by': 1},
	{'name': '932-780 Ullamcorper Av.', 'zip': '74979', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 474, 230 Bibendum. St.', 'zip': '71385', 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	{'name': '196-2401 Donec Rd.', 'zip': '22152', 'client_id': 1, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #267-3500 Congue Rd.', 'zip': '51903', 'client_id': 15, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #295-3715 Dignissim Road', 'zip': '24079', 'client_id': 7, 'created_by': 1, 'updated_by': 1},
	{'name': '702-1860 Gravida Ave', 'zip': '71801', 'client_id': 10, 'created_by': 1, 'updated_by': 1},
	{'name': '7098 Nunc Rd.', 'zip': '60604', 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'name': '7840 Mollis. Rd.', 'zip': '69417', 'client_id': 2, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #277-8470 Fermentum St.', 'zip': '40914', 'client_id': 1, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #537-2386 Ultrices Rd.', 'zip': '23174', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 485, 1701 Congue Avenue', 'zip': '56115', 'client_id': 9, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #594-3353 Lorem, St.', 'zip': '36584', 'client_id': 7, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 556, 8855 Tincidunt, Rd.', 'zip': '19009', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': '7669 Orci Rd.', 'zip': '77216', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': '9508 Nec Street', 'zip': '97171', 'client_id': 2, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 919, 1199 Lacus. Rd.', 'zip': '81102', 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	{'name': '421-7004 Donec Av.', 'zip': '72397', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': '1279 Id, Avenue', 'zip': '72776', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': '4180 Enim. Street', 'zip': '33484', 'client_id': 15, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 666, 1267 Lobortis Rd.', 'zip': '30907', 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	{'name': '4082 Dignissim. Rd.', 'zip': '18034', 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'name': '421-1784 Magna Road', 'zip': '17582', 'client_id': 9, 'created_by': 1, 'updated_by': 1},
	{'name': '3856 Arcu Av.', 'zip': '92002', 'client_id': 6, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #770-7199 Lorem St.', 'zip': '84539', 'client_id': 3, 'created_by': 1, 'updated_by': 1},
	{'name': '148-837 Dictum Ave', 'zip': '47942', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 816, 8837 Malesuada Street', 'zip': '24846', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': '1052 Maecenas St.', 'zip': '51519', 'client_id': 1, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 814, 4505 Ut Rd.', 'zip': '15029', 'client_id': 1, 'created_by': 1, 'updated_by': 1},
	{'name': '293-6218 Nulla. Rd.', 'zip': '31956', 'client_id': 2, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 573, 1872 Ante Road', 'zip': '23286', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': '576-1556 Tempor Rd.', 'zip': '59486', 'client_id': 9, 'created_by': 1, 'updated_by': 1},
	{'name': '3362 Ornare, St.', 'zip': '6491', 'client_id': 8, 'created_by': 1, 'updated_by': 1},
	{'name': '3115 Odio. St.', 'zip': '5141', 'client_id': 3, 'created_by': 1, 'updated_by': 1},
	{'name': '452-6911 Duis Av.', 'zip': '40358', 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'name': '892-4091 Gravida. Ave', 'zip': '5581', 'client_id': 14, 'created_by': 1, 'updated_by': 1},
	{'name': '140-2336 Malesuada Ave', 'zip': '71705', 'client_id': 3, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 275, 8399 Eget Road', 'zip': '79471', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 972, 4717 Aliquet, Road', 'zip': '40084', 'client_id': 8, 'created_by': 1, 'updated_by': 1},
	{'name': '650 Sodales. Street', 'zip': '71450', 'client_id': 8, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #387-688 Odio Av.', 'zip': '23997', 'client_id': 10, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 347, 1571 Pede. Road', 'zip': '86775', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #382-1043 Augue Av.', 'zip': '10092', 'client_id': 3, 'created_by': 1, 'updated_by': 1},
	{'name': '729-9464 Malesuada Avenue', 'zip': '83859', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': '392-8311 Dignissim Ave', 'zip': '39374', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': '719-2827 A Avenue', 'zip': '65010', 'client_id': 11, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #150-9991 Nunc Rd.', 'zip': '09931', 'client_id': 7, 'created_by': 1, 'updated_by': 1},
	{'name': '966-1363 Et, St.', 'zip': '90659', 'client_id': 15, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #443-7917 Vel Street', 'zip': 'S92XQ', 'client_id': 12, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 972, 5100 Consectetuer Av.', 'zip': '77582', 'client_id': 7, 'created_by': 1, 'updated_by': 1},
	{'name': '802-3860 Semper Av.', 'zip': '66746', 'client_id': 13, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #229-3212 Risus Road', 'zip': '8326', 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'name': '719-9819 Netus Rd.', 'zip': '23948', 'client_id': 7, 'created_by': 1, 'updated_by': 1},
	{'name': '845-3430 A St.', 'zip': '13309', 'client_id': 11, 'created_by': 1, 'updated_by': 1}
];

specialities = [
	{'name': 'Allergy and Immunology', 'client_id': 2, 'created_by': 1, 'updated_by': 1},
	{'name': 'Anesthesia', 'client_id': 6, 'created_by': 1, 'updated_by': 1},
	{'name': 'Cardiovascular', 'client_id': 14, 'created_by': 1, 'updated_by': 1},
	{'name': 'Cardiology', 'client_id': 6, 'created_by': 1, 'updated_by': 1},
	{'name': 'Dermatology', 'client_id': 14, 'created_by': 1, 'updated_by': 1},
	{'name': 'Gastroenterology', 'client_id': 6, 'created_by': 1, 'updated_by': 1},
	{'name': 'Endocrinology and Metabolism', 'client_id': 4, 'created_by': 1, 'updated_by': 1}
];

physicians = [
	{'first_name': 'Willa', 'middle_name': 'Cohen', 'last_name': 'Kendall', 'qualification': 'BDM', 'designation': 'Dr.', 'department': 'Advertising', 'address': '832-445 Dui Ave', 'email': 'ligula@sapiengravida.org', 'years_of_experience': 1, 'group': 'C', 'npi_number': 1, 'speciality_id': 6, 'location_id': 74, 'client_id': 7, 'created_by': 1, 'updated_by': 1},
	{'first_name': 'Beau', 'middle_name': 'Stevens', 'last_name': 'Libby', 'qualification': 'DM', 'designation': 'Ms.', 'department': 'Payroll', 'address': 'P.O. Box 142, 267 Interdum Rd.', 'email': 'donec@dis.edu', 'years_of_experience': 6, 'group': 'A', 'npi_number': 2, 'speciality_id': 2, 'location_id': 89, 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'first_name': 'Skyler', 'middle_name': 'Mullen', 'last_name': 'Chester', 'qualification': 'BDM', 'designation': 'Mr.', 'department': 'Human Resources', 'address': '402-4940 Dictum St.', 'email': 'sed@maurisMorbinon.com', 'years_of_experience': 9, 'group': 'A', 'npi_number': 4, 'speciality_id': 1, 'location_id': 22, 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'first_name': 'Dahlia', 'middle_name': 'Poole', 'last_name': 'Tamekah', 'qualification': 'MBBS', 'designation': '', 'department': 'Human Resources', 'address': '853-2956 Sit Street', 'email': 'nec@quis.com', 'years_of_experience': 6, 'group': 'A', 'npi_number': 5, 'speciality_id': 3, 'location_id': 50, 'client_id': 3, 'created_by': 1, 'updated_by': 1},
	{'first_name': 'Gray', 'middle_name': 'Rodriguez', 'last_name': 'David', 'qualification': 'BDM', 'designation': '', 'department': 'Advertising', 'address': 'Ap #773-5907 Nullam Ave', 'email': 'libero@famesacturpis.org', 'years_of_experience': 4, 'group': 'A', 'npi_number': 6, 'speciality_id': 7, 'location_id': 49, 'client_id': 9, 'created_by': 1, 'updated_by': 1},
	{'first_name': 'Zelda', 'middle_name': 'Kirkland', 'last_name': 'Jameson', 'qualification': 'CMS', 'designation': 'Dr.', 'department': 'Legal Department', 'address': 'Ap #888-480 Sapien. Rd.', 'email': 'enim@tortorInteger.co.uk', 'years_of_experience': 5, 'group': 'F', 'npi_number': 7, 'speciality_id': 1, 'location_id': 52, 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	];



begin
	Client.create!(clients)
	Location.create!(locations)
	Speciality.create!(specialities)
	Physician.create!(physicians)
rescue StandardError => se
	puts se.backtrace.join("\n")
end

