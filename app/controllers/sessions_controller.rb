class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && params[:name] != "" #user.authenticate(params[:session][:name])
    #  log_in user
      redirect_to user
    else
      render 'new'
    end
  end

  def destroy
  end
end
