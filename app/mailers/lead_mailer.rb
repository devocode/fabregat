class LeadMailer < ApplicationMailer
	def new_lead(lead)
		@lead = lead
		mail(to: "nallenanderson@gmail.com", from: @lead.email, subject: "Has recibido un mensaje en Gourmet Fabregat & Co.")
	end
end