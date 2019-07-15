class AddReviewIdToTheaterlikes < ActiveRecord::Migration[5.2]
  def change
    add_column :theaterlikes, :review_id, :integer
  end
end
