class LiasonPhysician < ActiveRecord::Base
	belongs_to :physician
	belongs_to :liason
	
	
end
