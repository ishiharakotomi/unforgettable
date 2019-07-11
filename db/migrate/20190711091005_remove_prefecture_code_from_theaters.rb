class RemovePrefectureCodeFromTheaters < ActiveRecord::Migration[5.2]
  def change
    remove_column :theaters, :prefecture_code, :integer
  end
end
