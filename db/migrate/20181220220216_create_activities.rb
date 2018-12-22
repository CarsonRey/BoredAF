class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :activity
      t.string :type
      t.integer :participants
      t.integer :price
      t.string :link, default: ""
      
      t.timestamps
    end
  end
end

# // {
# //   "activity": "Learn Express.js",
# //   "accessibility": 0.25,
# //   "type": "education",
# //   "participants": 1,
# //   "price": 0.1,
# //   "link": "https://expressjs.com/",
# //   "key": "3943506"
# // }
