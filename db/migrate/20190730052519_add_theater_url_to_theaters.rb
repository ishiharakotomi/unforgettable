class AddTheaterUrlToTheaters < ActiveRecord::Migration[5.2]
  def change
    add_column :theaters, :theater_url, :string
  end
end
