module AuthsHelper
  def log_in(user)
    session[:user_email]=user.email
  end
  def current_user
    @current_user ||= User.find_by(email: session[:user_email])
  end
  def logged_in?
    !current_user.nil?
  end
end
