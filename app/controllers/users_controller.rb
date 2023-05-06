class UsersController < ApplicationController
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to admin_dashboard_path, notice: "Usuario #{@user.email} eliminado"
    end
  end
end