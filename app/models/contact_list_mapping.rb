class ContactListMapping < ApplicationRecord

	belongs_to :contact_list
	belongs_to :contact
end
