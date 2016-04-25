module SessionsHelper

def authenticate!
redirect_to log_in_path unless current_user
end

def current_user
  if session[:user_id]
    @current_user = User.find(session[:user_id])
  end
end

end
