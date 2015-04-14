class User < OpenStruct
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # get logged in user
  include Rack::Webauth::Helpers
  before_filter :current_user

  private

    def current_user
      # this should probably be a class
      @current_user = User.new( :user => webauth.login )
    end
 
    def logged_in?
      # logger.error("logged in: %s %s" % [current_user['user'], ! current_user['user'].nil?])
      ! current_user['user'].nil?
    end
 
    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to access this section"
        new_login_url = "https://%s%s" % [request.host_with_port,request.fullpath]
        # logger.error("redirect to login: %s" % [new_login_url])
        redirect_to new_login_url # halts request cycle
      end
    end

end
