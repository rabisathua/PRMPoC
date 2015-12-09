module PhysicianFilter
  class Lead
    def self.physicians(location_id, speciality_id)
      Physician.by_location_and_speciality(location_id, speciality_id).by_lead
    end
  end
end