feature 'Signing up' do
  scenario 'I can sign up as a new user' do
    # byebug
    user = build :user
    expect { sign_up(user) }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, Raph')
    expect(User.first.email).to eq('raph@test.com')
  end

  scenario 'requires a matching confirmation password' do
    user = build(:user, password_confirmation: 'wrong')
    expect { sign_up(user) }.not_to change(User, :count)
  end

  scenario 'with a password that does not match' do
    user = create(:user, password_confirmation: 'wrong')
    expect { sign_up(user) }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content 'Password does not match the confirmation'
  end

  scenario 'without an email address' do
    user = create(:user, email: '')
    expect { sign_up(user) }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content 'Email must not be blank'
  end

  scenario 'I cannot sign up with the same email twice' do
    user = create(:user)
    expect { sign_up(user) }.to change(User, :count).by(0)
    expect(page).to have_content('Email is already taken')
  end

  scenario 'I cannot sign up if someone I am already signed in' do
    user = create(:user)
    sign_in(user)
    visit('/users/new')
    expect(current_path).to eq('/')
  end
end

feature 'Sign in' do
  scenario 'with correct details' do
    user = create(:user)
    sign_in(user)
    expect(page).to have_content 'Welcome, Raph'
  end

  scenario 'error with incorrect password' do
    user = build(:user, password: 'wrong')
    sign_in(user)
    expect(page).to have_content('The email or password is incorrect')
  end
end

feature 'Sign out' do
  scenario 'when signed in, user can sign out' do
    user = create :user
    sign_in(user)
    click_button 'Sign out'
    expect(current_path).to eq '/'
  end
end
