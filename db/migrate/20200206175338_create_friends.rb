class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :phone_number
      t.string :image_url
      t.datetime :date_last_outreach
      t.string :priority
      t.integer :user_id

      t.timestamps
    end
  end
end
