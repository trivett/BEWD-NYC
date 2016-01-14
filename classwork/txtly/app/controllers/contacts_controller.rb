class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(safe_contact_params)
    redirect_to root_path
  end

  private

  def safe_contact_params
    params.require(:contact).permit(:name, :phone)
  end
end