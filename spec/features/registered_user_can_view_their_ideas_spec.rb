require_relative '../rails_helper'
RSpec.feature 'registred user can view ideas' do
  it "allows a user to log in and view their ideas" do
    User.create(username:'Ash',
                 password: 'pikachu')

    visit login_path
    fill_in 'Username', with: "Ash"
    fill_in 'Password', with: 'pikachu'
    click_button "Login"

    click_link "Add New Idea"
    fill_in 'Title' , with: 'Pokeball'
    fill_in 'Body',   with: 'charizard'
    click_button "Create Idea"
    assert page.has_content?('Your Idea Has been Created')

    click_link "View All Ideas"
  end
end 
