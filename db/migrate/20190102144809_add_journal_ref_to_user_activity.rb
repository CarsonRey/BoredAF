class AddJournalRefToUserActivity < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_activities, :journal, foreign_key: true
  end
end
