class CoursesController < ApplicationController

  def new
    @instructor = Instructor.find(params[:instructor_id])
    @course = Course.new
  end

  def create
    @instructor = Instructor.find(params[:instructor_id])
    @course = Course.new(course_params)
    @course.instructor_id = @instructor.id
    if @course.save
      redirect_to instructor_course_path(@course.instructor_id, @course)
    else
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:instructor_id])
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to instructor_course_path(@course.instructor_id, @course)
    else
      render 'edit'
    end
  end


  def index
    @courses = Course.all
  end

  def destroy
  end

  private

  def course_params
    params.require(:course).permit(:name, :hours)
  end

  def find_course
    @course = Course.find(params[:id])
  end
end
