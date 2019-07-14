class AddInquiryToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :inquiry, :string
  end
end
