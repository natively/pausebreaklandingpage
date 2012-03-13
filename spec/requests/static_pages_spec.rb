require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have content 'Pause|Break'" do
      visit '/static_pages/home'
      page.should have_content('pause|break')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "pause|break")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '- Home')
    end
  end

  describe "Contact Us Page" do
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_content('Contact Us')
    end
    
    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "pause|break - Contact Us")
    end
  end

  describe "Signing up a potential client" do
    before { visit contact_path }
    
    describe "with valid information" do
      it "should not create a user" do
        expect { click_button "Contact Us" }.not_to change( PotentialClient, :count )
      end
    end
    
    describe "with valid information" do
      before do
        fill_in "Name",                             with: "Example client"
        fill_in "Email",                            with: "example@mysiterules.com"
        fill_in "Phone",                            with: "865-555-3456"
        fill_in "Briefly describe your project:",   with: "This is a sample project description"
      end
      it "should create a potential client" do
        expect do
          click_button "Contact Us"
        end.to change( PotentialClient, :count ).by( 1 )
      end
    end
  end
end
