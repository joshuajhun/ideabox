require_relative '../rails_helper'
RSpec.feature 'user can log in/log out' do

  it "allows regeistred users to log in" do
    User.create(username:'jhunbug',
                 password: 'dana')

    visit login_path
    fill_in 'Username', with: "jhunbug"
    fill_in 'Password', with: 'dana'
    click_button "Login"

    assert page.has_content?('Welcome jhunbug.')
  end

  it 'displays an error message when a user puts in an incorrect password' do
    User.create(username:'jhunbug',
                 password: 'dana')

    visit login_path
    fill_in 'Username', with: "jhunbug"
    fill_in 'Password', with: 'bruh'
    click_button "Login"

    assert page.has_content? ("The username or password you've provide is inccorect.")
  end

  it 'displays an error message when a user puts in an incorrect username' do
    User.create(username:'jhunbug',
                 password: 'dana')

    visit login_path
    fill_in 'Username', with: "ash_ketchum"
    fill_in 'Password', with: 'dana'
    click_button "Login"

    assert page.has_content? ("The username or password you've provide is inccorect.")
  end

  it 'allows a user to log in and log out ' do
    User.create(username:'jhunbug',
             password: 'dana')

     visit login_path
      fill_in 'Username', with: "jhunbug"
      fill_in 'Password', with: 'dana'
      click_button "Login"

      assert page.has_content?("Welcome jhunbug.")

      click_link 'Logout'

      assert page.has_content?("Goodbye!")
      assert page.has_content?("Login")
    end

end
