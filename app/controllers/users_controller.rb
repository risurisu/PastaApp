class UsersController < ApplicationController

include SessionsHelper

def create
  User.create(user_params)
  redirect_to log_in_path
end

def new
  @user = User.new

end

def profile
  authenticate!
  @user = current_user
end

def log_in

end

private

def user_params
  params.require(:user).permit(:username, :password, :admin)
end


end
