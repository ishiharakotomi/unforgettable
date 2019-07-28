class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :theater_name
      t.text   :theater_image_id
      t.string :address
      t.string :phonenumber
      t.string :introduction
      t.string :title
      t.string :body
      t.text :review_image
      t.integer :review_type
      t.integer :postcode
      t.string :address_city
      t.string :address_street
      t.string :address_building
      t.string :prefecture_name

      t.timestamps
    end
  end
end