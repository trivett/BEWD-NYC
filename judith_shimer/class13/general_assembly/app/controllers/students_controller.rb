class StudentsController < ApplicationController

	def index
		@course = Course.find(params[:course_id])
		@students = @course.students
		@instructor = @course.instructor
	end

	def show
		@course = Course.find(params[:course_id])
		@student = @course.students.find(params[:id])
	end

	def new
		@course = Course.find(params[:course_id])
		@student = @course.students.new
	end

	def create
		@course = Course.find(params[:course_id])
		@student = @course.students.new(student_params)
		if @student.save
			flash[:notice] = "#{@student.name} has been added to #{@course.name}."
			redirect_to course_students_path
		else
			redirect_to new_course_student_path
		end
	end

	def edit
		@course = Course.find(params[:course_id])
		@student = @course.students.find(params[:id])
	end

	def update
		@course = Course.find(params[:course_id])
		@student = @course.students.find(params[:id])
		if @student.update(student_params)
			flash[:update] = "#{@student.name} has been updated."
			redirect_to course_student_path
		else
			redirect_to new_course_student_path
		end
	end

	def destroy
		@course = Course.find(params[:course_id])
		@student = @course.students.find(params[:id])
		@student.destroy
		flash[:notice] = "#{@student.name} has been removed from #{@course.name}."
		redirect_to course_students_path
	end

	private

	def student_params
		params.require(:student).permit(:name,:grade)
	end

end