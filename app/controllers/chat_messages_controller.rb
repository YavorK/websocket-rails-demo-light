class ChatMessagesController < WebsocketRails::BaseController

  def my_event_name
    WebsocketRails[:my_channel_name].trigger(:my_event_name, {:message => message[:message]})
    broadcast_message :my_event_name, { :text => message[:text] }
  end

end