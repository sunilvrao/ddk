class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  #after_sign_in_path_for is called by devise
  def after_sign_in_path_for(resource_or_scope)
    dashboards_path
  end
  
  # Override build_footer method in ActiveAdmin::Views::Pages
  require 'active_admin_views_pages_base.rb'
end
