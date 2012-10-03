require 'spec_helper'

describe "StaticPages" do
  describe "static_pages/about does something" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/static_pages/about'
      response.status.should be(200)
      visit '/static_pages/about'
      page.should have_content("Sample App");
    end

    describe "Home" do
      it "includes title" do
        visit '/static_pages/home';
        page.should have_selector('title', :text => "Ruby on Rails Sample App | Home")
      end
    end
    
    describe "About" do
      it "includes title" do
        visit '/static_pages/about';
        page.should have_selector('title', :text => "Ruby on Rails Sample App | About")
      end
    end
    
    describe "Help" do
      it "includes title" do
        visit '/static_pages/help';
        page.should have_selector('title', :text => "Ruby on Rails Sample App | Help")
      end
    end

  end


end
