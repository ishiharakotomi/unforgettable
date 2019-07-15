class CreateSpendlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :spendlikes do |t|
      t.integer :spend_id
      t.integer :user_id

      t.timestamps
    end
  end
end
