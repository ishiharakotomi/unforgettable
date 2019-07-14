class AddNicknameToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :nickname, :string
    add_column :contacts, :name, :string
    add_column :contacts, :name_kana, :string
  end
end
