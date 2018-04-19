require 'rails_helper.rb'

feature"Teacher adds a student" do
    
    scenario "Teacher successfully adds a new student" do
        visit new_roster_path
        fill_in "Rostername", with: "A New Capybara Roster"
        click_button "Save Roster"
        fill_in "Name", with: "A New Capybara Player"
        fill_in "Teacher", with: "A New Capybara Teacher"
        fill_in "Grade", with: "A New Capybara Grade"
        click_button "Create Player"
        expect(page).to have_content"Players"
        expect(page).to have_content"A New Capybara Player"
        expect(page).to have_content"A New Capybara Teacher"
        expect(page).to have_content"A New Capybara Grade"
    end
end