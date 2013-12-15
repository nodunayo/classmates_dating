class MessagesController < ApplicationController
  def index
  end

  def new
    @message = Message.new
  end

  def create
    recipient = User.find_by_email(params[:message][:recipient])
    @message = Message.new sender: current_user, recipient: recipient, body: params[:message][:body]
    if @message.save
      flash[:notice] = "Message sent!"
      redirect_to '/messages'
    else
      render 'new'
    end
  end


end
