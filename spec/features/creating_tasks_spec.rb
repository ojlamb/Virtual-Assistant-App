feature 'Creating tasks' do
  scenario 'I can create a new tasks if I am signed in' do
    user = create :user
    sign_in(user)
    click_button 'New task'
    expect(current_path).to eq('/tasks/new')
    task = build(:task)
    tag = build(:tag)
    create_task(task, tag)
    expect(current_path).to eq('/')
    expect(page).to have_content('Wash my hair')
    expect(page).to have_content('Home')
    expect(page).to have_content('26/08/2015')
    expect(page).to have_content('Personal')
  end

  scenario 'I cannot create a new task if not signed in' do
    visit('/')
    expect(page).not_to have_content('New Task')
  end
end
