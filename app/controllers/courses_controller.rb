class CoursesController < ApplicationController
  before_action :authenticate_request!
  def index
    render json: {
      user: current_user
    }
  end

  def create
    course = current_user.courses.create course_params
    if course.valid?
      render json: course
    else
      render json: {
        errors: course.errors.full_messages
      }
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :school_id)
  end
end
