require 'rails_helper'
RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it "has an admin attribute" do
    expect(FactoryGirl.create(:user)).to have_attribute(:admin)
  end
  describe "User admin attribute true" do
    let(:user) {create :user, email: "aaa@user.com", password: "abcd1234", admin: true}

      it "has admin attribute set to true" do
        expect(user.admin).to eq true
      end
    end
end
