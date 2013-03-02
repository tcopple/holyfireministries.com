class ContactMailer < ActionMailer::Base
  default from: "holyfireministries-website@holyfireministries.com",
          to: ["j.tylercopple@gmail.com", "stephanie@holyfireministries.com"]

  def send_contact_email(info)
    @phone = info[:phone]
    @email = info[:email]
    @description = info[:description].html_safe
    @name = info[:name]
    mail subject: "Book JK RFI: #{info[:name]}"
  end
end
