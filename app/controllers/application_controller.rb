class ApplicationController < ActionController::Base

    private

    def authenticate_user
        unless current_user.present?
            redirect_to(new_session_path)
        end
    end

    def current_user
        @current_user = @current_user || User.find_by(id: session[:id])
    end
end
