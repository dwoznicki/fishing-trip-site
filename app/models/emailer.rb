class Emailer

  def self.send_email(email, name)
    mg_client = Mailgun::Client.new ENV["EMAIL_KEY"]
    message_params = {
      from:  "mailgun@sandbox0c3085cfb8bf4faca36df2f8134f5fd1.mailgun.org",
      to:  "#{email}",
      subject:  "Fishing Site Confirmation",
      text:  "Hi #{name}, you can now login to fishing site using your email."
    }

    mg_client.send_message("sandbox0c3085cfb8bf4faca36df2f8134f5fd1.mailgun.org", message_params)
  end

end
