class StudentsController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @student = User.find(params[:id])
    @students = User.all

    @match = User.match
    @student1 = @match.shift
  end
end
