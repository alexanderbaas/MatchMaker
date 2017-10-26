class StudentsController < ApplicationController
  def index
    @users = User.all.order(admin: :desc, name: :asc)
  end

  def show
    @users = User.all
    end


  def meth
    @students = User.all.where(admin: false)
        @students = @students.select(:email).map(&:attributes)
        @student = @students.shift
        @students.shuffle!

        @students.length.times do |index_number|
        puts "day #{index_number + 1} #{student} matches with #{students.first}"
        @students.rotate
      end
    end

end
