class ChangeDateMessageToContactRequests < ActiveRecord::Migration[5.2]
  def change
  	change_column :contact_requests, :message, :text
  end
end
