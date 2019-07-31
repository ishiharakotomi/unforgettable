class ChangeDateMessageToContact < ActiveRecord::Migration[5.2]
  def change
  	change_column :contacts, :message, :text
  end
end
