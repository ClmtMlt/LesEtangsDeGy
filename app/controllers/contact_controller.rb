class ContactController < ApplicationController
  skip_before_action :contact_params

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contact_path(@contact)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :description)
  end
end
