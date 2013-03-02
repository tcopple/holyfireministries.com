class PagesController < ApplicationController
  def index

  end

  def kendrick
    render layout: 'kendrick';
  end

  def email
    ContactMailer.send_contact_email(params).deliver
    @message = "Thank you for your request, someone should respond within 24 hours."
    render 'kendrick', layout: 'kendrick'
  end
end
