class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if cookies[:user_id]
      @_current_user ||= User.find_by(id: cookies.signed[:user_id])
    end
  end
  helper_method :current_user

  def signed_in?
    current_user
  end
  helper_method :signed_in?

  def authenticate
    unless signed_in?
      redirect_to new_session_path
    end
  end

  def sign_in user
    cookies.signed[:user_id] = user.id
  end
end
