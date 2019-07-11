class AddPrefectureNameToTheaters < ActiveRecord::Migration[5.2]
  def change
    add_column :theaters, :prefecture_name, :string
  end
end
