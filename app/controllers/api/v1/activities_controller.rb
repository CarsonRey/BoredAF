class Api::V1::ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    render json: @activities
  end

  def find_or_create_activity
    # byebug
    if Activity.find_by(activity: params[:activity])
      @activity = Activity.find_by(activity: params[:activity])
      render json: @activity
    else
      @activity = Activity.create(activity_params)
      if @activity.valid?
        render json: @activity
      end
    end
  end

  def activity_params
    {activity: params["activity"], category: params["category"]}
  end


end
