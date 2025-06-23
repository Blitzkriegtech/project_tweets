class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil # gets rid of user session
    redirect_to root_path, notice: "Logged out"
  end
end
