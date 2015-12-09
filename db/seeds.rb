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
	{'first_name': 'Willa', 'middle_name': 'Cohen', 'last_name': 'Kendall', 'qualification': 'BDM', 'designation': 'Dr.', 'department': 'Advertising', 'address': '832-445 Dui Ave', 'email': 'ligula@sapiengravida.org', 'years_of_experience': 1, 'group': 'C', 'npi_number': 1, 'speciality_id': 1, 'location_id': 1, 'client_id': 7, 'created_by': 1, 'updated_by': 1},
	{'first_name': 'Beau', 'middle_name': 'Stevens', 'last_name': 'Libby', 'qualification': 'DM', 'designation': 'Ms.', 'department': 'Payroll', 'address': 'P.O. Box 142, 267 Interdum Rd.', 'email': 'donec@dis.edu', 'years_of_experience': 6, 'group': 'A', 'npi_number': 2, 'speciality_id': 1, 'location_id': 1, 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'first_name': 'Skyler', 'middle_name': 'Mullen', 'last_name': 'Chester', 'qualification': 'BDM', 'designation': 'Mr.', 'department': 'Human Resources', 'address': '402-4940 Dictum St.', 'email': 'sed@maurisMorbinon.com', 'years_of_experience': 9, 'group': 'A', 'npi_number': 4, 'speciality_id': 1, 'location_id': 3, 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'first_name': 'Dahlia', 'middle_name': 'Poole', 'last_name': 'Tamekah', 'qualification': 'MBBS', 'designation': '', 'department': 'Human Resources', 'address': '853-2956 Sit Street', 'email': 'nec@quis.com', 'years_of_experience': 6, 'group': 'A', 'npi_number': 5, 'speciality_id': 3, 'location_id': 4, 'client_id': 3, 'created_by': 1, 'updated_by': 1},
	{'first_name': 'Gray', 'middle_name': 'Rodriguez', 'last_name': 'David', 'qualification': 'BDM', 'designation': '', 'department': 'Advertising', 'address': 'Ap #773-5907 Nullam Ave', 'email': 'libero@famesacturpis.org', 'years_of_experience': 4, 'group': 'A', 'npi_number': 6, 'speciality_id': 7, 'location_id': 5, 'client_id': 9, 'created_by': 1, 'updated_by': 1},
	{'first_name': 'Zelda', 'middle_name': 'Kirkland', 'last_name': 'Jameson', 'qualification': 'CMS', 'designation': 'Dr.', 'department': 'Legal Department', 'address': 'Ap #888-480 Sapien. Rd.', 'email': 'enim@tortorInteger.co.uk', 'years_of_experience': 5, 'group': 'F', 'npi_number': 7, 'speciality_id': 1, 'location_id': 1, 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	];

test_user = [
	{ email: 'test@ih.com', password: 'test1234', password_confirmation: 'test1234', name: 'test'}
];

begin
	Client.create!(clients)
	Location.create!(locations)
	Speciality.create!(specialities)
	Physician.create!(physicians)
	User.create!(test_user)
rescue StandardError => se
	puts se.backtrace.join("\n")
end

