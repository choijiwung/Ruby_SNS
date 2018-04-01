class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper
    def authenticate
    redirect_to new_session_path if !user_signed_in?
    end
    def authenticate_admin
    redirect_to :back unless current_user.admin
    end
end
