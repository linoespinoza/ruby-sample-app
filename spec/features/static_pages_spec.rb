require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector 'title', text: "Ruby on Rails Tutorial Sample App"  }
    it { should_not have_selector 'title', text: '| Home'}
  end

  describe "Help Page" do
    it "shoudl have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end

    it "should have the right title" do
      visit help_path
      page.should have_selector('title', 
        :text => "#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end

    it "should have the right title" do
      visit about_path
      page.should have_selector('title', 
        :text => "#{base_title} | About Us")
    end
  end 

  describe "Contact Us Page" do
    
    it "should have the h1 'Contact' " do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the right title" do
      visit contact_path
      page.should have_selector('title',
        :text => "#{base_title} | Contact Us")
    end
  end
end
