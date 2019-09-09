feature 'So that I can save time' do
  scenario 'I can see a list of my bookmarks' do
    # save_and_open_page
    visit('/bookmarks')
    expect(page).to have_content('google.com')
    expect(page).to have_content('makersacademy.com')
  end
end
