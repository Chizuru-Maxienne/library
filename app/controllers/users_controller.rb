class UsersController < ApplicationController
  require 'bcrypt'
  def login

  end
  def new
    @user=User.new
  end
  def register

  end
end
