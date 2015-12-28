# class InstructorsController < ApplicationController
#     def new
#       @course = Course.find(params[:course_id])
#       @instructor = @course.instructor.new
#     end

#     def create
#       @course = Course.find(params[:course_id])
#       @instructor = @course.instructor.new(instructor_params)

#       if @instructor.save
#         flash[:notice] = "#{ @instructor.name } has joined #{ @course.name } as an instructor!"
#         redirect_to course_students_path
#       else
#         flash[:notice] = "New instructor could not be created. Try again."
#         redirect_to new_course_instructor_path
#       end
#     end

#     def destroy
#       flash[:notice] = "Student deleted!"
#       Instructor.find(params[:id]).destroy
#       redirect_to course_students_path
#     end
      
#   private

#   def instructor_params
#     params.require(:instructor).permit(:name)
#   end

# end