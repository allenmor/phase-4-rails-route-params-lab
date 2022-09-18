class StudentsController < ApplicationController

  def index
    
    students = params[:name] ? 
    Student.find_by(first_name: params[:name].capitalize()) || Student.find_by(last_name: params[:name].capitalize()) :
    Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end


end
