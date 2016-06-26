class ContactsController < ApplicationController

    
    def new
        @contact = Contact.new
        @contacts = Contact.all
    end
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to new_contacts_path
        end
    end
    
    

  private

  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :email)
  end

end
