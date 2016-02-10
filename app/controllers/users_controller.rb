class UsersController < ApplicationController
  require 'bcrypt'
  def login

  end
  def new
    @user=User.new
  end
  def register
    @user=User.new(user_params_register)

      respond_to do |format|
        if (@user.save)
          format.html {redirect_to root_path, notice: 'You may sign in now'}
        else
          format.html {render 'new'}
          #format.json{@user}
      end
    end
  end
  private
  def user_params_register
    params.require(:user).permit(:email,:password,:password_confirmation)
  end
end
