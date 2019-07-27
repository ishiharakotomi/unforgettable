class CreateTheaterlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :theaterlikes do |t|
      t.references :user, foreign_key: true
      t.references :theater, foreign_key: true
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
