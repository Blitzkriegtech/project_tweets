class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_current_user

  # accessing the current user
  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  # require user log in method
  def require_user_logged_in!
    redirect_to sign_in_path, alert: "You must be signed in to take action." if Current.user.nil?
  end
end
