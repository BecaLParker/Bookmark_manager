# frozen_string_literal: true

require './app'

feature 'viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
  end
end
