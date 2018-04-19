require 'rails_helper.rb'

feature"Teacher adds a roster" do
    scenario "Teacher successfully navigates to the new roster page from the listing rosters page" do
        visit rosters_path
        expect(page).to have_content("Listing rosters")
        click_link "New Roster"
        expect(page).to have_content("New Roster")
        expect(page).to have_field ("Rostername")
    end

    scenario"Teacher successfully creates a new roster" do
        visit new_roster_path
        expect(page).to have_content("New Roster")
        fill_in "Rostername", with: "A New Capybara Roster"
        click_button "Save Roster"
        expect(page).to have_content"A New Capybara Roster"
    end
end