class Emergency < ActiveRecord::Base
	belongs_to :student
	belongs_to :parent
end
