class ApplicationController < ActionController::Base
  before_action :basic_auth

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      binding.pry
      username == ENV["ITSUMEN_USER"] && password == ENV["ITSUMEN_PASSWORD"]
    end
  end
end
