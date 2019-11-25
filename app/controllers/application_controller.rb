class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :configure_account_update_params, if: :devise_controller?

    before_action :cors_set_access_control_headers

    def cors_preflight_check
      if request.method == 'OPTIONS'
        cors_set_access_control_headers
        render text: '', content_type: 'text/plain'
      end
    end

    protected

    def cors_set_access_control_headers
      response.headers['Access-Control-Allow-Origin'] = '*'
      response.headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
      response.headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token, Auth-Token, Email, X-User-Token, X-User-Email'
      response.headers['Access-Control-Max-Age'] = '1728000'
end
  
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