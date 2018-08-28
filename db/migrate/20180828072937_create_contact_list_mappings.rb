class CreateContactListMappings < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_list_mappings do |t|
      t.integer :contact_list_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
