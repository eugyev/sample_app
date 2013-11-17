require 'spec_helper'

describe "UserPages" do
  
  subject { page }

  describe "signup page" do
    it "should have content signup" do
      visit signup_path
      page.should have_content('Sign Up')
    end
  end

  
  describe "sign up page title test" do
     it "should have the right title" do
       visit signup_path
       page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Sign Up')
     end
  end
end


