class AddActivityIdToJournals < ActiveRecord::Migration[5.2]
  def change
    add_reference :journals, :activity, foreign_key: true
  end
end
