class SchoolsController < ApplicationController
  before_action :authenticate_request!

  def index
    render json: School.all
  end
end
