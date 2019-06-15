# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'home page', type: :feature do
  scenario 'user visits the homepage' do
    visit '/'

    expect(page).to have_text('show index')
  end

  scenario 'user can see a link to the app' do
    visit '/'

    expect(page).to have_selector(:css, 'a[href="/app"]')
  end
end
