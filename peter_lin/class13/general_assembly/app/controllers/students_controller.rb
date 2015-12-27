class StudentsController < ApplicationController

    def index
      @course = Course.find(params[:course_id])
      @students = @course.students
    end

    def show
      @course = Course.find(params[:course_id])
      @student = Student.find(params[:id])
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

    def destroy
      flash[:notice] = "Student deleted!"
      Student.find(params[:id]).destroy
      redirect_to course_students_path
    end

    def edit
      @course = Course.find(params[:course_id])
      @student = Student.find(params[:id])
    end

    def update
      @course = Course.find(params[:course_id])
      @student = Student.find(params[:id])
      if @student.update(student_params)
        flash[:notice] = "Student Updated"
        redirect_to course_students_path
      else
        flash[:notice] = "Student Update Failed"
        render edit_course_student_path
      end
    end

  private

  def student_params
    params.require(:student).permit(:name,:grade)
  end


end