class AdminsController < ApplicationController
  before_action :authorize_admin

  def index
    @users = User.all.order(admin: :desc, name: :asc)
  end
  def show
    @users = User.all
  end

end
