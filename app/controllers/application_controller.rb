class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def log_in(user)
    @current_user = user
    session[:session_token] = user.reset_token!
  end

  def log_out
    current_user.reset_token!
    current_user.destroy if current_user.guest
    session[:session_token] = nil
  end

  def require_logged_in!
    redirect_to new_session_url unless current_user
  end
end
