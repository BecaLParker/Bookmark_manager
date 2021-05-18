# frozen_string_literal: true

require './app'

feature 'viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content"https://www.bbc.co.uk/cbeebies"
    expect(page).to have_content"https://www.youtube.com"
    expect(page).to have_content"https://www.ebay.co.uk"

  end
end
