class PagesController < ApplicationController
  def send_message
    account_sid = "ACa41f31fd1164c79a6fb46bcf1e3fb438"
    auth_token = "c44a56784f930da27130160095b87ae6"

        @client = Twilio::REST::Client.new account_sid, auth_token
        @twilio_number = "+7815145857" 
        message = @client.messages.create(
          :from => @twilio_number,
          :to => 7814003837,
          :body => alert_message
        )
        puts message.to
  end
end
