class AuthsController < ApplicationController
  def login

  end
  def verify
    user = User.find_by(email: params[:user][:email].downcase)
    if user && user.authenticate(params[:user][:password])
      log_in user
      redirect_to root_path
    else
    flash[:danger] = 'Invalid email/password combination'
    render 'login'
    end
    end
  def logout
    session.destroy
    redirect_to root_path
  end
end
