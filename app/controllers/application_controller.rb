class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied, ActiveRecord::RecordNotFound do |e|
    flash[:alert] = "Access denied."
    redirect_to root_url
  end
end
