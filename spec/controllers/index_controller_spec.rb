# frozen_string_literal: true

require 'rails_helper'

RSpec.describe IndexController, type: :controller do
  describe '#index' do
    it 'renders the correct template' do
      get :index

      expect(response).to render_template(:index)
    end
  end
end
