class LeadMailer < ApplicationMailer
	def new_lead(lead)
		@lead = lead
		mail(to: "gerencia@gourmetfabregat.cl", from: @lead.email, subject: "Recibiste un nuevo mensaje | Gourmet Fabregat y Co.")
	end
end
