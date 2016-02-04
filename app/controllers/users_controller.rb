class UsersController < ApplicationController
  require 'bcrypt'
  def login

  end
  def new
    @user=User.new
  end
  def register
    @user=User.new(user_params)

      respond_to do |format|
        if (@user.save)
          format.html {redirect_to 'welcome/index', notice: 'You may sign in now'}
        else
          format.html {'new'}
      end
    end
  end
  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
