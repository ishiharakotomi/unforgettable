class AddIsComfirmedToContactsAndContactRiquests < ActiveRecord::Migration[5.2]
  def change
  	add_column :contacts, :is_confirmed, :boolean, default: false
  	add_column :contact_requests, :is_confirmed, :boolean, default: false
  end
end