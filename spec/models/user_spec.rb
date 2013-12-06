require 'spec_helper'

describe User do
  
  it {should belong_to :school}

  context 'passwords' do
    let(:user) { User.new }
    before do    
      user.password = 'foobar'
    end

    it 'can set a password' do
      expect(user.encrypted_password).not_to be_empty
    end

    it 'encrypts the password' do
      expect(user.encrypted_password.to_s).not_to eq 'foobar'
    end
  end

  context 'valid user' do

    it 'is valid given an email, first name and last name' do
      user = build(:user)
      expect(user).to be_valid
    end

  end

  context 'invalid user' do

    it 'is invalid without an email' do
      user = build(:user, email: nil)
      expect(user).not_to be_valid
    end

    it 'is invalid without a password' do
      user = build(:user, password: nil)
      expect(user).not_to be_valid
    end
  end

end
