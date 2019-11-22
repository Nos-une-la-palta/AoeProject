class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :configure_account_update_params, if: :devise_controller?
  
    rescue_from CanCan::AccessDenied do |exception|
      respond_to do |format|
        format.html { redirect_to root_url, alert: exception.message }
      end
    end

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:image, :nick, :moderator])
    end

    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: [:image, :nick])
    end

  end