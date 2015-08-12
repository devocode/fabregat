class LeadMailer < ApplicationMailer
	def new_lead(lead)
		@lead = lead
		mail(to: "nallenanderson@gmail.com", from: @lead.email, subject: "Recibiste un nuevo mensaje en Gourmet Fabregat y Co.")
	end
end
