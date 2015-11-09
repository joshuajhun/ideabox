require_relative '../rails_helper'
RSpec.feature 'admins can set categories' do
  it "admin can see categories index" do

    admin = User.create(username: "admin",
                        password: "password",
                        role: 1)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
    visit admin_categories_path
    assert page.has_content?("All Categories")
  end

  it 'default user does not see admin categories index' do
  user = User.create(username: "default_user",
                      password: "password",
                      role: 0)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    visit admin_categories_path
    refute page.has_content?("All Categories")
    assert page.has_content?("The page you were looking for doesn't exist.")
  end
end
