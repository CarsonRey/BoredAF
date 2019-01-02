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
      @activity = Activity.new(activity_params)
      if @activity.save
        render json: @activity
      end
    end
  end



  def activity_params
    {activity: params["activity"], category: params["category"], link: params["link"]}
  end


end
