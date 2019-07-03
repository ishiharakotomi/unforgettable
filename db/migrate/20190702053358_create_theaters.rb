class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :theater_name
      t.text :theater_image_id
      t.string :postalcode
      t.string :address
      t.string :phonenumber
      t.string :introduction
      t.integer :theater_id
      t.integer :user_id
      t.string :title
      t.string :body
      t.text :review_image
      t.integer :review_type

      t.timestamps
    end
  end
end
