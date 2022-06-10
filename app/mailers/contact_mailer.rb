class ContactMailer < ApplicationMailer
    def contact_mail(contact)
        @contact = contact
        
        mail to: ENV["TOMAIL"], subject: "お問合せ内容"
    end
end
