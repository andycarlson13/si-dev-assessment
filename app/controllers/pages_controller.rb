class PagesController < ApplicationController
  def send_message
    account_sid = "yyy"
    auth_token = "xxx"

        @client = Twilio::REST::Client.new account_sid, auth_token
        @twilio_number = "+xxx" 
        message = @client.messages.create(
          :from => @twilio_number,
          :to => @verified_phone_number,
          :body => alert_message
        )
        puts message.to
  end
end
