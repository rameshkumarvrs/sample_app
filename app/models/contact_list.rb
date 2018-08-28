class ContactList < ApplicationRecord
	has_many :contact_list_mappings
	has_many :contact, through: :contact_list_id
end
