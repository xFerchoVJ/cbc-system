class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    # redirect_to admin_dashboard_path if resource.is_a? Admin
    return admin_dashboard_path if resource.is_a? Admin
    houses_path
  end
end
