class Liason < ActiveRecord::Base
	belongs_to :user
	has_many :liason_physicians
	has_many :physicians, through: :liason_physicians	

	def is_active?
		self.is_active
	end

	scope :assigned_physicians, ->(id){ Liason.includes(:physicians).where(id: id) }
end
