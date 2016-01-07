# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

clients = [
	{'name': 'Mona U. Lane', 'logo_path': "", 'description': "", 'init_path': "", 'is_enabled': false, 'created_by': 1, 'updated_by': 1},
	{'name': 'Jeanette F. Macdonald', 'logo_path': "", 'description': "", 'init_path': "", 'is_enabled': false, 'created_by': 1, 'updated_by': 1},
	{'name': 'Nina C. Kane', 'logo_path': "", 'description': "", 'init_path': "", 'is_enabled': false, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ima A. Farmer', 'logo_path': "", 'description': "", 'init_path': "", 'is_enabled': false, 'created_by': 1, 'updated_by': 1},
	{'name': 'Martin J. Merrill', 'logo_path': "", 'description': "", 'init_path': "", 'is_enabled': false, 'created_by': 1, 'updated_by': 1},
	{'name': 'Bruce P. Gibson', 'logo_path': "", 'description': "", 'init_path': "", 'is_enabled': false, 'created_by': 1, 'updated_by': 1},
	{'name': 'Xenos O. Rich', 'logo_path': "", 'description': "", 'init_path': "", 'is_enabled': false, 'created_by': 1, 'updated_by': 1},
	{'name': 'Minerva T. Abbott', 'logo_path': "", 'description': "", 'init_path': "", 'is_enabled': false, 'created_by': 1, 'updated_by': 1},
	{'name': 'Clarke D. Kennedy', 'logo_path': "", 'description': "", 'init_path': "", 'is_enabled': false, 'created_by': 1, 'updated_by': 1}
];

locations = [
	{'name': 'Ap #404-7680 Id, Av.', 'zip': '52151', 'client_id': 1, 'created_by': 1, 'updated_by': 1},
	{'name': '714-4852 Neque St.', 'zip': '92717', 'client_id': 1, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #258-8317 Auctor, Ave', 'zip': '70672', 'client_id': 2, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #257-889 Enim. St.', 'zip': '22217', 'client_id': 2, 'created_by': 1, 'updated_by': 1},
	{'name': '7402 Mollis Road', 'zip': '12204', 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 430, 3669 Nisi. Street', 'zip': '51193', 'client_id': 8, 'created_by': 1, 'updated_by': 1},
	{'name': 'Ap #175-1026 Placerat Road', 'zip': '64295', 'client_id': 3, 'created_by': 1, 'updated_by': 1},
	{'name': 'P.O. Box 507, 2874 Mi, Av.', 'zip': '59301', 'client_id': 7, 'created_by': 1, 'updated_by': 1},
	{'name': '392-6741 Faucibus Rd.', 'zip': '85396', 'client_id': 4, 'created_by': 1, 'updated_by': 1},
	{'name': '4190 Enim Road', 'zip': '79459', 'client_id': 5, 'created_by': 1, 'updated_by': 1},
	{'name': '682-2834 Ultrices Road', 'zip': '76541', 'client_id': 6, 'created_by': 1, 'updated_by': 1},
];

specialities = [
	{'name': 'Allergy and Immunology', 'created_by': 1, 'updated_by': 1},
	{'name': 'Anesthesia', 'created_by': 1, 'updated_by': 1},
	{'name': 'Cardiovascular', 'created_by': 1, 'updated_by': 1},
	{'name': 'Cardiology', 'created_by': 1, 'updated_by': 1},
	{'name': 'Dermatology', 'created_by': 1, 'updated_by': 1},
	{'name': 'Gastroenterology', 'created_by': 1, 'updated_by': 1},
	{'name': 'Endocrinology and Metabolism', 'created_by': 1, 'updated_by': 1}
];

physicians = [
	{'first_name': 'Willa', 'middle_name': 'Cohen', 'last_name': 'Kendall', 'qualification': 'BDM', 'designation': 'Dr.', 'department': 'Advertising', 'address': '832-445 Dui Ave', 'email': 'ligula@sapiengravida.org', 'years_of_experience': 1, 'group': 'C', 'npi_number': 1, 'speciality_id': 1, 'location_id': 1, 'client_id': 7, 'created_by': 1, 'updated_by': 1, is_involved: false, is_lead: true},
	{'first_name': 'Beau', 'middle_name': 'Stevens', 'last_name': 'Libby', 'qualification': 'DM', 'designation': 'Ms.', 'department': 'Payroll', 'address': 'P.O. Box 142, 267 Interdum Rd.', 'email': 'donec@dis.edu', 'years_of_experience': 6, 'group': 'A', 'npi_number': 2, 'speciality_id': 1, 'location_id': 1, 'client_id': 4, 'created_by': 1, 'updated_by': 1, is_involved: true, is_lead: false},
	{'first_name': 'Skyler', 'middle_name': 'Mullen', 'last_name': 'Chester', 'qualification': 'BDM', 'designation': 'Mr.', 'department': 'Human Resources', 'address': '402-4940 Dictum St.', 'email': 'sed@maurisMorbinon.com', 'years_of_experience': 9, 'group': 'A', 'npi_number': 4, 'speciality_id': 1, 'location_id': 3, 'client_id': 4, 'created_by': 1, 'updated_by': 1, is_involved: true, is_lead: false},
	{'first_name': 'Dahlia', 'middle_name': 'Poole', 'last_name': 'Tamekah', 'qualification': 'MBBS', 'designation': '', 'department': 'Human Resources', 'address': '853-2956 Sit Street', 'email': 'nec@quis.com', 'years_of_experience': 6, 'group': 'A', 'npi_number': 5, 'speciality_id': 3, 'location_id': 4, 'client_id': 3, 'created_by': 1, 'updated_by': 1, is_involved: false, is_lead: true},
	{'first_name': 'Gray', 'middle_name': 'Rodriguez', 'last_name': 'David', 'qualification': 'BDM', 'designation': '', 'department': 'Advertising', 'address': 'Ap #773-5907 Nullam Ave', 'email': 'libero@famesacturpis.org', 'years_of_experience': 4, 'group': 'A', 'npi_number': 6, 'speciality_id': 7, 'location_id': 5, 'client_id': 9, 'created_by': 1, 'updated_by': 1, is_involved: true, is_lead: false},
	{'first_name': 'Zelda', 'middle_name': 'Kirkland', 'last_name': 'Jameson', 'qualification': 'CMS', 'designation': 'Dr.', 'department': 'Legal Department', 'address': 'Ap #888-480 Sapien. Rd.', 'email': 'enim@tortorInteger.co.uk', 'years_of_experience': 5, 'group': 'F', 'npi_number': 7, 'speciality_id': 1, 'location_id': 1, 'client_id': 5, 'created_by': 1, 'updated_by': 1, is_involved: false, is_lead: true},
	];

client_specialities = [
	{ 'client_id': 2, 'speciality_id': 1 },
	{ 'client_id': 2, 'speciality_id': 2 },
	{ 'client_id': 3, 'speciality_id': 1 },
	{ 'client_id': 3, 'speciality_id': 4 }
];


test_users = [
	{ email: 'test@ih.com', password: 'test1234', password_confirmation: 'test1234', first_name: "Test", last_name: "User", active: true, type: "Admin"},
	{ email: 'liason1@ih.com', password: 'liason123', password_confirmation: 'liason123', first_name: "Test", last_name: "User", active: true, type: "Liason" },
	{ email: 'liason2@ih.com', password: 'liason123', password_confirmation: 'liason123', first_name: "Test", last_name: "User", active: true, type: "ClientAdmin" },
	{ email: 'liason3@ih.com', password: 'liason123', password_confirmation: 'liason123', first_name: "Test", last_name: "User", active: true, type: "Liason" }
];

client_users = [
	{ client_id: 2, user_id: 1 },
	{ client_id: 3, user_id: 1}
];

liason_physicians = [
	{ physician_id: 1, liason_id: 2},
	{ physician_id: 4, liason_id: 2},
	{ physician_id: 5, liason_id: 2},
	{ physician_id: 2, liason_id: 3},
	{ physician_id: 6, liason_id: 3},
	{ physician_id: 3, liason_id: 3}
];


roles = [
	{ name: "Admin" },
	{ name: "Client Admin" }, # Client admin
	{ name: "Liason" }
];

user_roles = [
	{user_id: 1, role_id: 1},
	{user_id: 2, role_id: 3},
	{user_id: 3, role_id: 1},
	{user_id: 3, role_id: 2},
	{user_id: 4, role_id: 3}
];

permissions = [
	{ resource: 'Location', action: 'index'},
	{ resource: 'Speciality', action: 'index'},
	{ resource: 'Physician', action: 'index'},
	{ resource: 'Liason', action: 'index'}
];

role_permissions = [
	{role_id: 1, permission_id: 1},
	{role_id: 1, permission_id: 2},
	{role_id: 1, permission_id: 3},
	{role_id: 1, permission_id: 4},

	{role_id: 2, permission_id: 1},
	{role_id: 2, permission_id: 2},
	{role_id: 2, permission_id: 3},

	{role_id: 3, permission_id: 1},
	{role_id: 3, permission_id: 2},
	{role_id: 3, permission_id: 3}
];


Client.create!(clients)
Location.create!(locations)
Speciality.create!(specialities)
Physician.create!(physicians)
ClientSpeciality.create!(client_specialities)
User.create!(test_users)
Role.create!(roles)
UserRole.create!(user_roles)
Permission.create!(permissions)
RolePermission.create!(role_permissions)
ClientUser.create!(client_users)
LiasonPhysician.create!(liason_physicians)

