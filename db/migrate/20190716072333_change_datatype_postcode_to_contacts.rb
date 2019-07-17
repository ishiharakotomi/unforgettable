class ChangeDatatypePostcodeToContacts < ActiveRecord::Migration[5.2]
  def change
  	change_column :contacts, :postcode, :integer
  end
end
