class RemoveTheaterIdFromTheaters < ActiveRecord::Migration[5.2]
  def up
  	remove_column :theaters, :theater_id
  end

  def down
  	add_column :theaters, :theater_id, :integer
  end
end
