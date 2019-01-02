class Api::V1::UserActivitiesController < ApplicationController

  def index
    @relationships = UserActivity.all
    render json: @relationships
  end

  def create
    @relationship = UserActivity.create(relationship_params)
    # byebug
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
      @relationship.update(tried: params[:body][:tried], journaled: params[:body][:journaled])
    render json: @relationship
  end

  def destroy
    # byebug
    @relationship = UserActivity.find(params[:id])
    @relationship.destroy
    render json: {resp:"deleted"}
  end

private

  def relationship_params
    {activity_id: params["activity_id"], user_id: params["user_id"], tried:params["tried"], journaled: params["journaled"] }
  end

end
