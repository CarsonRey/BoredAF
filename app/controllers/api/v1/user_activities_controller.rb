class Api::V1::UserActivitiesController < ApplicationController


  def index
    @relationships = UserActivity.all
    render json: @relationships
  end

  def create

  end

end
