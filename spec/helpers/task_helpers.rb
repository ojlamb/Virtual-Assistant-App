module TaskHelpers
  def create_task(item, tag)
      visit '/tasks/new'
      fill_in :task, with: item.task
      fill_in :location, with: item.location
      fill_in :deadline, with: item.deadline
      fill_in :tags, with: tag.tag_name
      click_button 'Create Task'
  end
end
