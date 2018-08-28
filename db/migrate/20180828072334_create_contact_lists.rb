class CreateContactLists < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
