class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?
  private
  def admin?
    session[:password] == "Tovlu"
  end
  
  def authorize
    unless admin?
      # :flash => { :error => "You got Unauthorized access." }
      redirect_to root_path
      false
    end
  end
  
end
