class WelcomeController < ApplicationController
  def index
  end

  def usuarios
	@users = User.all.order("id")
  end
  
end


