class Lead < ActiveRecord::Base
	validates :first_name, :last_name, :email, :telephone, :message, presence: true 
end
