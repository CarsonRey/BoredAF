class AddJournalBooleanToUserActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :user_activities, :journaled, :boolean, default: false
  end
end
