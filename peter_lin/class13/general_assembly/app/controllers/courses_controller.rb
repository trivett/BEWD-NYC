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

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      flash[:notice] = "Course Updated"
      redirect_to courses_path
    else
      flash[:notice] = "Course Update Failed"
      redirect_to edit_course_path
    end
  end


  private

  def course_params
    params.require(:course).permit(:name)
  end

end