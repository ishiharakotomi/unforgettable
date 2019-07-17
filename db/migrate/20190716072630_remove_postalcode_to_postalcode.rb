class RemovePostalcodeToPostalcode < ActiveRecord::Migration[5.2]
  def change
  	remove_column :contacts, :postalcode, :string
  end
end
