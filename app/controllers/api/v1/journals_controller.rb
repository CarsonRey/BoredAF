class Api::V1::JournalsController < ApplicationController
  def index
    @journalEntries = Journal.all
    render json: @journalEntries
  end

  def create
    @journal = Journal.create(journal_params)
    if @journal.valid?
      render json: @journal
    end
  end

  def destroy
    @journal = Journal.find(params[:id])
    @journal.destroy
    render json: {resp:"deleted"}
  end

  private

  def journal_params
    params.require(:journal).permit(:date, :participants, :learned, :favorite_part, :least_favorite, :would_do_again)
  end

  # t.string :date
  # t.string :participants
  # t.string :learned
  # t.string  :favorite_part
  # t.string :least_favorite
  # t.boolean :would_do_again, default: false


end
