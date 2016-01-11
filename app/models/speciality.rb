class Speciality < ActiveRecord::Base
	has_many :client_specialities
	has_many :clients, through: :client_specialities
	has_many :physician_details

  validates :name, presence: true, uniqueness: true

  scope :by_clients, ->(app_id){ includes(:clients).where("clients.id": app_id).uniq! }
end