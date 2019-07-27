class RenameSpendIdColumnToSpendlikes < ActiveRecord::Migration[5.2]
  def change
  	rename_column :spendlikes, :spend_id, :review_id
  end
end
