require 'spec_helper'


describe "StaticPages" do
  describe "Home" do
    it "should have some content" do
      visit "/static_pages/home"
      expect(page).to have_content('Artsby App')
    end

    it "should not have this title" do
      visit "/static_pages/home"
      expect(page).not_to have_content('Just Home')
    end
  end
  describe "Help" do 
  	it"should have some content" do 
  		visit "/static_pages/help"
  		expect(page).to have_content('Help Area')
  	end

    it "should not to have this title" do
      visit "/static_pages/help"
      expect(page).not_to have_content('Just Help')
    end
  end
  describe "About" do
    it "should have some content" do
      visit "/static_pages/about"
      expect(page).to have_content('About Us')
    end

    it "should not to have this title"
      visit "/static_pages/about"
      expect(page).not_to have_content('Just About Us')
  end
end

