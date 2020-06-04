def sign_up
  visit '/users/sign_up'
  fill_in 'user_username', with: 'John Doe'
  fill_in 'user_email', with: 'test@test.com'
  fill_in 'user_password', with: 'testtest'
  fill_in 'user_password_confirmation', with: 'testtest'
  click_button 'Sign up'
end

def sign_in
  visit '/users/sign_in'
  fill_in 'user_email', with: 'test@test.com'
  fill_in 'user_password', with: 'testtest'
  click_button 'Log in'
end
