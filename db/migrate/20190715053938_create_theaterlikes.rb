class CreateTheaterlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :theaterlikes do |t|
      t.integer :theater_id
      t.integer :user_id

      t.timestamps
    end
  end
end
