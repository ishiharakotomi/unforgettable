class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
    t.string :email
    t.text :message
    t.boolean :is_confirmed, default: false
    t.string :name
    t.string :name_kana
    t.string :nickname

      t.timestamps
    end
  end
end
