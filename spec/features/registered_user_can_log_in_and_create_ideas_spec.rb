require_relative '../rails_helper'
RSpec.feature 'can create ideas' do

  it 'allows registred users to create ideas' do
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
  end

  it 'allows registred users to edit ideas' do
    User.create(username:'Ash',
                 password: 'pikachu')

    visit login_path
    fill_in 'Username', with: "Ash"
    fill_in 'Password', with: 'pikachu'
    click_button "Login"

    click_link "Add New Idea"
    fill_in 'Title' , with: 'stuff'
    fill_in 'Body',   with: 'morestuff'
    click_button "Create Idea"
    assert page.has_content?('Your Idea Has been Created')

    click_link "View All Ideas"
    click_link "edit"

    fill_in 'Title' , with: 'Gary'
    fill_in 'Body',   with: 'sucks'
    click_button "Edit Idea"
    assert page.has_content?('You have edited your idea')

  end
end
