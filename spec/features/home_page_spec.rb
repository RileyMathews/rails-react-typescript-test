require "rails_helper"

RSpec.feature "home page", type: :feature do
  scenario "user visits the homepage" do
    visit '/'

    expect(page).to have_text("show index")
  end
end