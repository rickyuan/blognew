class SessionsController < ApplicationController
  def new
  end
  
  def create
    session[:password] = params[:password]
    # :flash => { :notice => "Successfully login as admin." }
    redirect_to root_path
  end
  
  def destroy
    reset_session
    # :flash => { :notice => "Successfully logout."}
    redirect_to root_path
  end
  
end
