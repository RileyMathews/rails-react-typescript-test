# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'home page', type: :feature do
  scenario 'user visits the homepage' do
    visit '/'

    expect(page).to have_text('show index')
  end

  scenario 'user sees link to app, clicks it, and is redirected to login page' do
    visit '/'

    expect(page).to have_selector(:css, 'a[href="/app"]')

    click_on 'Goto App'

    expect(page).to have_content('Login Required')
  end
end
