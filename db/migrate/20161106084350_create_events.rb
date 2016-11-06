class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :club_id
      t.integer :user_id

      t.timestamps
    end
  end
end
