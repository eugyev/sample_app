require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('Sample App')
    end
  end
  
  describe "home page title test" do
    it "should have the right title" do
      visit root_path
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
    end
  end
  
  it "should not have a custom page title" do
    visit root_path
    page.should_not have_selector('title', :text => '| Home')
  end
  
  describe "Help Page" do
    it "should have the word 'help'" do
      visit help_path
      page.should have_content('Help')
    end
  end
  
  describe "help page title test" do
    it "should have the right title" do
      visit help_path
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Help')
    end
  end
  
  describe "Contact page" do
    it "should have the content 'Contact'" do
        visit contact_path
        page.should have_content('Contact')
      end
    it "should have the title 'Contact'" do
        visit contact_path
        page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact")
      end
  end
  
  describe "about page" do
    it "should have the content 'about us'" do
      visit about_path
      page.should have_content('About Us')
    end
  end
  
  describe "about page title test" do
    it "should have the right title" do
      visit about_path
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | About Us')
    end
  end
  
end

