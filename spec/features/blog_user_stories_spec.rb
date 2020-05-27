feature 'blog User Stories'

# As a blogger
# So I can share my unique and interesting opionions
# I would like to be able to create a new blog
feature 'create a new blog' do
  scenario 'user can create a new blog' do
    visit 'blogs/new'
    fill_in 'blog[title]', with: 'New Blog'
    fill_in 'blog[description]', with: 'This is a new blog'
    click_button 'Create Blog'

    expect(page).to have_content 'New Blog'
  end

  # As a user
  # So I can find interesting blogs to read
  # I would like to see a list of blogs
  feature 'Viewing blogs' do
    scenario 'user can see a list of blogs' do
      visit '/blogs'

      expect(page).to have_content "Opinionated blog about politics"
      expect(page).to have_content "Fascinating blog about the environment"
      expect(page).to have_content "Interesting blog about animal rights"
    end
  end

end
