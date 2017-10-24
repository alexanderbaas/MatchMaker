class AdminsController < ApplicationController

  def index
  @students = Student.all
  end
  def show
  # @admin = Admin.find(params[:id])
  #  @student = Student.find(params[:id])
  end

end
