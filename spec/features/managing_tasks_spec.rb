feature 'I can manage my tasks' do
  before :each do
    user = create :user
    sign_in(user)
    click_button 'New task'
    expect(current_path).to eq('/tasks/new')
    task = build(:task)
    tag = build(:tag)
    create_task(task, tag)
  end

  scenario 'I can view my tasks' do
    expect(current_path).to eq('/')
    expect(page).to have_content('Wash my hair')
    expect(page).to have_content('Home')
    expect(page).to have_content('26/08/2015')
    expect(page).to have_content('Personal')
  end

  scenario 'I can delete my tasks' do
    expect(current_path).to eq('/')
    click_button('Delete')
    expect(page).not_to have_content('Wash my hair')
    expect(page).not_to have_content('Home')
    expect(page).not_to have_content('26/08/2015')
    expect(page).not_to have_content('Personal')
  end
end
