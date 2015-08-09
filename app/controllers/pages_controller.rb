class PagesController < ApplicationController

  def home
  	@lead = Lead.new
  end

  def en
  	@lead = Lead.new
  end
  
end
