module AuthsHelper
  def log_in(user)
    session[:user_email]=user.email
    session[:user_role]=user.role
  end
  def current_user
    @current_user ||= User.find_by(email: session[:user_email])
  end
  def logged_in?
    !current_user.nil?
  end
  def is_admin?
    if session[:user_role]==0
      return true
    else
      return false
    end
  end
end
