require 'spec_helper'

feature 'User' do

  scenario 'user can register, logout, and login' do
    visit '/'

    click_on 'Create Account'
    fill_in 'user[username]', :with => 'New User'
    fill_in 'user[password_digest]', :with => 'Password'
    fill_in 'user[first_name]', :with => 'first name'
    fill_in 'user[last_name]', :with => 'last name'
    fill_in 'user[email]', :with => 'Newuser@email.com'
    click_on 'Create'
    expect(page).to have_content 'User Created'
    expect(page).to have_content 'Welcome, Newuser@email.com'
    expect(page).to have_content 'Logout'

    click_on 'Logout'
    expect(page).to have_no_content 'User Created'
    expect(page).to have_no_content 'Welcome, Newuser@email.com'
    expect(page).to have_no_content 'Logout'


    click_on 'Login'
    fill_in 'email', :with => 'Newuser@email.com'
    fill_in 'password', :with => 'Password'
    click_on 'Login'
    expect(page).to have_content 'Welcome, Newuser@email.com'
    expect(page).to have_content 'Logout'
  end
  scenario 'user cannot create an account with any empty fields' do
    visit '/'
    click_on 'Create Account'
    fill_in 'user[username]', :with => ''
    fill_in 'user[password_digest]', :with => 'Password'
    fill_in 'user[first_name]', :with => 'first name'
    fill_in 'user[last_name]', :with => 'last name'
    fill_in 'user[email]', :with => 'Newuser@email.com'
    click_on 'Create'
    expect(page).to have_content "Username can't be blank"

  end
end
