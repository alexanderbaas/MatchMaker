class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  def index
    @users = User.all.order(admin: :desc, name: :asc)
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
     user.update_attributes!(admin: !user.admin)
     redirect_to admin_path(current_user)

 end

  private

  def check_admin
    unless current_user.admin?
      redirect_to admin_path
    end
  end

end
