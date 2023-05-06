class PagesController < ApplicationController
  before_action :authenticate_admin!, only: %i[dashboard] 
  def home
  end

  def dashboard
    @users = User.all
  end
end
