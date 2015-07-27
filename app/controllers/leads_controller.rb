class LeadsController < ApplicationController
	before_action :set_lead, only: [:show, :edit, :update, :destroy]

	def index
		@lead = Lead.all
	end

	def create
		@lead = Lead.new lead_params
		if @lead.save
			redirect_to root_path, notice: "Gracias por el mensaje. ¡Estaremos en contacto!"
			
			#LeadMailer.new_lead(@lead).deliver_later   ADD LEAD MAILER LATER!!!!
			
		else
			redirect_to root_path, alert: "No pudimos guardar tus respuestas.  Por favor intenta de nuevo."
		end
	end

	def edit
	end

	def update
    if @lead.update(lead_params)
      redirect_to leads_path, notice: 'Has actualizado el estado del contacto.'
    else
      render action: 'edit'
    end
  end

	def destroy
	  @lead.destroy
	  respond_to do |format|
	    format.html { redirect_to leads_url, notice: 'Lead was successfully deleted.' }
	    format.json { head :no_content }
	  end
	end

	private

	def set_lead 
		@lead = Lead.find(params[:id])
	end

	def lead_params
		params.require(:lead).permit(:first_name, :last_name, :email, :message, :contacted)
	end
end

