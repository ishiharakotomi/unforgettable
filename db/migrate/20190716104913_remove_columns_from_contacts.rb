class RemoveColumnsFromContacts < ActiveRecord::Migration[5.2]
  def change
  	  remove_column :contacts, :theater_url
  	  remove_column :contacts, :responsible
  	  remove_column :contacts, :prefecture_name
  	  remove_column :contacts, :address_building
  	  remove_column :contacts, :address_street
  	  remove_column :contacts, :phonenumber
  	  remove_column :contacts, :address_city
  	  remove_column :contacts, :postcode
  	  remove_column :contacts, :contents
  	  remove_column :contacts, :request
  	  remove_column :contacts, :inquiry
  	  remove_column :contacts, :contact_type
  	  remove_column :contacts, :contact_type：integer
  end
end
