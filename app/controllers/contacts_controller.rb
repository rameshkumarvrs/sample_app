class ContactsController < ApplicationController

	before_action :find_contact, only:[:edit, :show, :update, :destroy]

	def index
		@contacts = Contact.all
	end	

	def new
		@contact = Contact.new
		
	end

	def create
		@contact = Contact.new(contact_params)

		if @contact.save
			redirect_to @contact

		else
		  render 'new'
		end	
	end

	
	def edit

	end

	def show

	end

	def update
		@contact = Contact.find(params[:id])
		if @contact.update(contact_params)
			
			redirect_to @contact
		else
			render 'edit'
		end	



	end

	def destroy

		@contact = Contact.find(params[:id])
		@contact.destroy
		redirect_to root_path

	end	

	private

	def contact_params
    
     params.require(:contact).permit(:name,:email)		
	end


    def find_contact
      @contact = Contact.find(params[:id])
    end 	




end
