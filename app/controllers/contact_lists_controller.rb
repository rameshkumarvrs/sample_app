class ContactListsController < ApplicationController


	def index

	end	

	def new
		@contact_list = ContactList.new

	end
	

	def create
          @contact_list = ContactList.new(contact_params)
          #@contact_list = @contact_list.build(contact_params)


		if @contact_list.save
			redirect_to @contact_list

		else
		  render 'new'
		end	
	end


	def show
     @contact_list = ContactList.find(params[:id])
	end	

	private

	def contact_params
    
     params.require(:contact_list).permit(:name)		
	end
end
