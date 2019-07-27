class AddNicknameToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :nickname, :string
  end
end
