class CreateSpendlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :spendlikes do |t|
      t.references :user, foreign_key: true
      t.integer :spend_id

      t.timestamps
    end
  end
end
