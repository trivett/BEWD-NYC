class StudentsController < ApplicationController

    def index
      @course = Course.find(params[:course_id])

      @students = @course.students
    end

    def new
      # params[:course_id] = params[:id]
      @course = Course.find(params[:course_id])
      @student = @course.students.new
    end

    def create
      @course = Course.find(params[:course_id])
      @student = @course.students.new(student_params)

      if @student.save
        flash[:notice] = "#{ @student.name } has joined #{ @course.name }!"
        redirect_to course_students_path
      else
        flash[:notice] = "New student could not be created. Try again."
        redirect_to new_course_student_path
      end
    end

  private

  def student_params
    params.require(:student).permit(:name,:grade)
  end


end