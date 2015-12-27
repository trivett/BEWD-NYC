class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      flash[:notice] = "#{ @course.name } has been created!"
      redirect_to courses_path
    else
      flash[:notice] = "Course could not be created. Try again."
      redirect_to new_course_path
    end
  end

  def destroy
    flash[:notice] = "Course deleted!"
    Course.find(params[:id]).destroy
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name)
  end

end