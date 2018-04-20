require 'rails_helper'

RSpec.describe User, type: :model do
  context 'the first user account' do
    before(:each) do
      @user = User.new
    end

    it 'should take email from .env.test' do
      @user.email = ENV.fetch('USER_EMAIL')
      expect(@user.email).to eq('drew@oheydrew.me')
    end
  end

  it 'should hash password' do
    user = User.new
  end
end
