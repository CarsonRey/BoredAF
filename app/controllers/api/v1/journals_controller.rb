class Api::V1::JournalsController < ApplicationController
  def index
    @journalEntries = Journal.all
    render json: @journalEntries
  end

  def create
    @journal = Journal.new(journal_params)
    if @journal.save
      render json: @journal
    end
  end

  def show
    @journalEntry = Journal.find(params[:id])
    render json: @journalEntry
  end

  def update
    @journalEntry = Journal.find(params[:id])
    @jouralEntry.update(journal_params)
    render json: @journalEntry
  end

  def destroy
    @journal = Journal.find(params[:id])
    @journal.destroy
    render json: {resp:"deleted"}
  end

  private

  def journal_params
    params.require(:journal).permit(:date, :participants, :learned, :favorite_part, :least_favorite, :would_do_again, :user_id, :activity_id)
  end

end
