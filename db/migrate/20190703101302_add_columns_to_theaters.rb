class AddColumnsToTheaters < ActiveRecord::Migration[5.2]
  def change
    add_column :theaters, :postcode, :integer
    add_column :theaters, :prefecture_code, :integer
    add_column :theaters, :address_city, :string
    add_column :theaters, :address_street, :string
    add_column :theaters, :address_building, :string
  end
end
