require 'rails_helper.rb'

feature"Teacher navigates through site" do
    scenario "Teacher successfully navigates to the new roster page from the listing rosters page" do
        visit ladders_path
        expect(page).to have_content("Listing Ladders")
        click_link "New Ladder"
        expect(page).to have_content("New Ladder")
        click_link "Back"
        expect(page).to have_content("Listing Ladders")
        click_link "View Rosters"
        expect(page).to have_content("Listing rosters")
        click_link "New Roster"
        expect(page).to have_content("New Roster")
    end
end