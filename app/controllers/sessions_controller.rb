class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] != nil && session[:name] != ""
    #  log_in user
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.destroy
  end
end
