class Liason < User
	has_many :liason_physicians
	has_many :physicians, through: :liason_physicians	

	def self.assigned_physicians(liason_id)
		liason = Liason.where(id: liason_id).last
		liason ? liason.physicians : []
	end

	def is_liason?
		true
	end
	
end
