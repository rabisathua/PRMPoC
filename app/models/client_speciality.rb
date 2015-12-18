class ClientSpeciality < ActiveRecord::Base
  belongs_to :client
  belongs_to :speciality

  validates :client_id, :speciality_id, presence: true
  validates_uniqueness_of :client_id, scope: :speciality_id , message: "already associated with speciality_id"

end
