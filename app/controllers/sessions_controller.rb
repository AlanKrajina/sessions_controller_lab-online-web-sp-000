class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if params[:name] != nil && params[:name] != "" #user.authenticate(params[:session][:name])
    #  log_in user
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy

    session.destroy

  end
end
