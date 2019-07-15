class AddReviewIdToSpendlikes < ActiveRecord::Migration[5.2]
  def change
    add_column :spendlikes, :review_id, :integer
  end
end
