class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
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
