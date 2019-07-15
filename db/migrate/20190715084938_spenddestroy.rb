class Spenddestroy < ActiveRecord::Migration[5.2]
  def change
  	drop_table :spendlikes
  end
end
