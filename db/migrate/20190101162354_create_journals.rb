class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :date
      t.string :participants
      t.string :learned
      t.string  :favorite_part
      t.string :least_favorite
      t.boolean :would_do_again, default: false
      t.timestamps
    end
  end
end
