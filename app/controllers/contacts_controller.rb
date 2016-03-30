class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    user_to_add =  User.find_by_email(params[:email])
    if user_to_add.present?
      contact = Contact.new(:owner_id => @current_user.id, :user_id => user_to_add.id)
      if contact.save
        redirect_to contact_path(contact)
      else
        flash[:error] = "Looks like you already have someone with this email in your contacts"
        render :new
      end
    else
      flash[:error] = "Unable to find anyone with that email."
      render :new
    end
  end

  def index
    @contacts = @current_user.contacts
  end

  def show
    @contact = Contact.find(params[:id])
  end

end
