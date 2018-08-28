class AddContactListToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :contact_list_id, :integer
  end
end
