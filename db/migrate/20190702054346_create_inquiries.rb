class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.integer :user_id
      t.string :inquiry_contents
      t.string :theater_name
      t.string :theater_name_kana
      t.string :person_in_charge
      t.string :email
      t.string :phonenumber
      t.string :postalcode
      t.string :address
      t.text :theater_image

      t.timestamps
    end
  end
end
