class StudentsController < ApplicationController
  def index
    @users = User.all.order(admin: :desc, name: :asc)
  end

  def show
    @users = User.all
    end
end
