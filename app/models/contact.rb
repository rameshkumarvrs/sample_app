class Contact < ApplicationRecord

	has_many :contact_list_mappings
	belongs_to :contact_list
end
