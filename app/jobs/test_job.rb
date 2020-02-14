require 'twilio-ruby'

class TestJob < ApplicationJob
  queue_as :default

  def perform(phone_number)
    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]

    
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    message = @client.messages
      .create(
        body: 'Thank you for signing up to Bestie!',
        from: '+17867237843',
        to: phone_number
      )

    puts message.sid
  end
end
