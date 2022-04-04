class StudentsController < ApplicationController

  def index
    students = Student.find_by(first_name: params[:name1], last_name: params[:name2])
    render json: students
  end

  def show
    student = Student.all.find_by(id: params[:id])
    render json: student
  end
end
