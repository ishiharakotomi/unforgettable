class RemoveUserIdFromTheaters < ActiveRecord::Migration[5.2]
  def up
  	remove_column :theaters, :user_id
  end

  def down
  	add_column :theaters, :user_id, :integer
  end
end
