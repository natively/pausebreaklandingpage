require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have content 'Pause|Break'" do
      visit '/static_pages/home'
      page.should have_content('Pause|Break')
    end
    
    it "should have the base title" do
          visit '/static_pages/home'
          page.should have_selector('title',
                            :text => "Pause|Break")
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
            page.should have_selector('title', :text => "Pause|Break - Contact Us")
      end
  end
end
