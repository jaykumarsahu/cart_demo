class SessionsController < ApplicationController
    def new
        @user = User.new
    end


    def create
       user = User.find_by(email: params[:email], password: params[:password])
       if user
            session[:id] = user.id
            redirect_to root_url
       else
            @error = 'wrong credentials'
            render 'new'
       end
    end

    def log_out
        session[:id] = nil
        redirect_to(new_session_path)
    end
end
