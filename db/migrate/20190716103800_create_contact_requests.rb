class CreateContactRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_requests do |t|
      t.string :email
      t.text :message
      t.string :nickname
      t.string :name
      t.string :name_kana
      t.integer :postcode
      t.string :address_city
	  t.string :phonenumber
	  t.string :address_street
	  t.string :address_building
	  t.string :prefecture_name
	  t.string :responsible
	  t.string :theater_url

      t.timestamps
    end
  end
end
