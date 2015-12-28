class InstructorsController < ApplicationController

    def show
      @course = Course.find(params[:course_id])
      @instructor = @course.instructor
    end

    def new
      @course = Course.find(params[:course_id])
      @instructor = Instructor.new
      # @course.instructor = @instructor

    end

    def create
      @course = Course.find(params[:course_id])
      @instructor = Instructor.new(instructor_params)
    

      if @instructor.save

        @course.instructor = @instructor

        flash[:notice] = "#{ @instructor.name } has joined #{ @course.name } as an instructor!"
        redirect_to course_students_path
      else
        flash[:notice] = "New instructor could not be created. Try again."
        redirect_to new_course_instructor_path
      end
    end

    def destroy
      flash[:notice] = "Instructor deleted!"
      Instructor.find(params[:id]).destroy
      redirect_to course_students_path
    end

    def edit
      @course = Course.find(params[:course_id])
      @instructor = Instructor.find(params[:id])
    end

    def update
      @course = Course.find(params[:course_id])
      @instructor = Instructor.find(params[:id])
      if @instructor.update(instructor_params)
        flash[:notice] = "Instructor Updated"
        redirect_to course_students_path
      else
        flash[:notice] = "Instructor Update Failed"
        redirect_to edit_course_instructor_path
        
        # Render doesn't work ?
        # render edit_course_instructor_path
      end
    end
      
  private

  def instructor_params
    params.require(:instructor).permit(:name)
  end

end