class Api::V1::UserActivitiesController < ApplicationController

  def index
    @relationships = UserActivity.all
    render json: @relationships
  end

  def create
    @relationship = UserActivity.create(relationship_params)
    if @relationship.valid?
      render json: @relationship
    end
  end

  def show
    @relationship = UserActivity.find(params[:id])
    render json: @relationship
  end

  def update
    # byebug
    @relationship = UserActivity.find(params[:id])
    @relationship.update(tried: params[:tried])
    render json: @relationship
  end

private

  def relationship_params
    {activity_id: params["activity_id"], user_id: params["user_id"], tried:params["tried"]}
  end

  def method_name

  end

end
