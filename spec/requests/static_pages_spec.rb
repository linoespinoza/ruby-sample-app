require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do
    it "should have the h1 'Sample App'" do
      before { visit root_path }
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      visit root_path
      page.should have_selector('title', :text => "#{base_title}")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => "| Home")
    end
  end

  describe "Help Page" do
    it "shoudl have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', 
        :text => "#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', 
        :text => "#{base_title} | About Us")
    end
  end 

  describe "Contact Us Page" do
    
    it "should have the h1 'Contact' " do
      visit '/static_pages/contact'
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
        :text => "#{base_title} | Contact Us")
    end
  end
end
