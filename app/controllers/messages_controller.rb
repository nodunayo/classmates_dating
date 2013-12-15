class MessagesController < ApplicationController
  
  def index
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new message_params
    if @message.save
      flash[:notice] = "Message sent!"
      redirect_to '/messages'
    else
      render 'new'
    end
  end

  private

  def recipient
    User.find_by_email(params[:message][:recipient])
  end

  def message_params
    { sender: current_user, recipient: recipient, body: params[:message][:body] }
  end

end
