require_relative '../rails_helper'
RSpec.feature 'user can register' do

  it 'allows an unregested user to register' do

    visit new_user_path

    fill_in "Username", with: "jhunbug"
    fill_in "Password", with: 'password'
    click_button "Create Account"
    assert page.has_content?("Welcome jhunbug.")
  end
end
