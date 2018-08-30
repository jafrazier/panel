class StudentsController < ApplicationController

  def new
    @student = Student.new
    @instructor = Instructor.find(params[:instructor_id])
    @course = Course.where(instructor_id: @instructor.id)
  end

  def create
    @instructor = Instructor.find(params[:instructor_id])
    @student = Student.new(student_params)
    @student.instructor_id = @instructor.id
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

  def index
    @students = Student.all
  end

  def destroy
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end
end
