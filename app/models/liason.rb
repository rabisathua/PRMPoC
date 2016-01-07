class Liason < User
	has_many :liason_physicians
	has_many :physicians, through: :liason_physicians	

	scope :assigned_physicians, ->(id){ Liason.includes(:physicians).where(id: id) }

	def is_liason?
		true
	end
	
end
