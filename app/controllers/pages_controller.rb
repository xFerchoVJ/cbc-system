class PagesController < ApplicationController
  before_action :authenticate_admin!, only: %i[dashboard] 
  def home
  end

  def dashboard
    @users = User.all
    @houses = House.order(id: :asc)
  end
end
