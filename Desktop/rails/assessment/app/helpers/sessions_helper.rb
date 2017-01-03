module SessionsHelper

    def login(user)
      session[:user_id] = user.id
    end

    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    def authorized?(user)
     logged_in? && current_user == user
    end

    def log_out
      session.delete(:user_id)
    end
    
end


