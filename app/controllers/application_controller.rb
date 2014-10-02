class ApplicationController < ActionController::Base
  include CustomRequestConfig

  protect_from_forgery with: :exception

  before_action :set_config

  private
    def set_config
      configure do |config|
        config.name       = "murajun1978"
        config.user_agent = request.env["HTTP_USER_AGENT"]
      end
    end
end
