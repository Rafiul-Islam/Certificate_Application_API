class ApplicationProcedure < ApplicationRecord
	# validations
  	validates_presence_of :certificate_type, :user_id, :payment
end
