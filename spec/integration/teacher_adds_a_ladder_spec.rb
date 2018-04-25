require 'rails_helper.rb'

feature"Teacher adds a ladder" do
    
    scenario "Teacher successfully adds a new ladder" do
        visit ladders_path
        expect(page).to have_content"Listing Ladders"
        click_link "New Ladder"
        expect(page).to have_content"New Ladder"
        fill_in "Name", with: "A New Capybara Ladder"
        click_button "Save Ladder"
        expect(page).to have_content"A New Capybara Ladder"
        
    end
end