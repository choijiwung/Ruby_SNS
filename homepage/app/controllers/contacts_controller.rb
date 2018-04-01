class ContactsController < ApplicationController
  before_action :authenticate, only: [:index]
  before_action :authenticate_admin
  def index
    @all_contacts = Contact.all
  end

  def new
  end

  def create
    @name = params[:name]
    @email = params[:email]
    @content = params[:content]
    new_contact = Contact.new(name: @name, email: @email, content: @content)
    if new_contact.save
      redirect_to "/contacts/index"
    else
      redirect_to "/contacts/new"
    end
  end
end
