require 'rails_helper'

describe "Let user see match" do

 before { login_as user }

 let(:user) { create :user, email: "current@user.com" }

 it "let student see match of the day" do
   
   visit student_url(user)

   expect(page).to have_text("Your match for today!")
 end

end
