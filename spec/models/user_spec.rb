# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is invalid without a username' do
    actual = User.new(username: '')

    expect(actual.valid?).to be(false)
  end

  it 'is valid with a username' do
    actual = User.new(username: 'username')

    expect(actual.valid?).to be(true)
  end
end
