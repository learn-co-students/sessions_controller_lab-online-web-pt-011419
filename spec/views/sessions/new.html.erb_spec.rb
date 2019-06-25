require 'rails_helper'

RSpec.feature "Logging In", :type => :feature do
  scenario "User logs in" do
    visit "/"
    expect(page).to have_text("please log in")

    visit "/sessions/new"
    fill_in "name", :with => "My Widget"
    click_button "log in"
    expect(page).to have_text("Hi, My Widget")
  end
end
