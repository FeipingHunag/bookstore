class Admin::BaseController < ApplicationController
  before_filter :authorize
  layout 'admin'

  protected

    def authorize
      if request.format == Mime::HTML
        unless User.find_by_id(session[:user_id])
          redirect_to login_url, :notice => "请先登录"
        end
      else
        authenticate_or_request_with_http_basic do |username, password|
          User.authenticate(username, password)
        end
      end
    end

end

