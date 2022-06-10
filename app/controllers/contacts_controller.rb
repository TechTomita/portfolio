class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      flash[:success] = "お問合せ内容を送信しました"
      redirect_to new_contact_url
    else
      flash.now[:danger] = "お問合せ内容の送信に失敗しました"
      render "contacts/new", status: :unprocessable_entity
    end
  end
  
  
  private
  
  def contact_params
    params.require(:contact).permit(:company, :name, :email, :tel, :message)
  end
end
