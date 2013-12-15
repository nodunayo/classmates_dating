require 'spec_helper'

describe Message do
  it { should belong_to :sender}
  it { should belong_to :recipient}

  specify 'sender is a User' do
    sender = build(:user)
    expect { 
      Message.new(sender: sender)
    }.not_to raise_error 
  end

  specify 'recipient is a User' do
    recipient = build(:user)
    expect { 
      Message.new(recipient: recipient)
    }.not_to raise_error 
  end

end
