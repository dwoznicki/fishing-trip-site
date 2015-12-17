require 'mailgun'
require 'dotenv'
require 'pp'
Dotenv.load

mg_client = Mailgun::Client.new ENV["SECRET_KEY"]

# message_params = {
#   from:  "mailgun@sandbox0c3085cfb8bf4faca36df2f8134f5fd1.mailgun.org",
#   to:  "mailgun@sandbox0c3085cfb8bf4faca36df2f8134f5fd1.mailgun.org",
#   subject:  "Please Work",
#   text:  "This is text hoping that it works yo!"
# }

# mg_client.send_message("sandbox0c3085cfb8bf4faca36df2f8134f5fd1.mailgun.org", message_params).to_h!

# message_id = result['id']
# message = result['message']

domain = "sandbox0c3085cfb8bf4faca36df2f8134f5fd1.mailgun.org"

result = mg_client.get("#{domain}/events", { event: 'accepted' })

pp result.to_h["items"].first["message"]

