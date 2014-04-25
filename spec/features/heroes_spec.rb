require 'spec_helper'

feature 'user' do
  scenario 'user can add hero' do
    visit '/'
    click_on 'All Heroes'

  end
end