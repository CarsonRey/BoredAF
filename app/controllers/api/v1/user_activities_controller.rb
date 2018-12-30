class Api::V1::UserActivitiesController < ApplicationController

  def index
    @relationships = UserActivity.all
    render json: @relationships
  end

  def create
    @user_activity = UserActivity.create(relationship_params)
    if @user_activity.valid?
      render json: @user_activity
    end
  end

  def relationship_params
    {activity_id: params["activity_id"], user_id: params["user_id"]}
  end

end
