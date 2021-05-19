# frozen_string_literal: true

require './app'

feature 'adding a bookmark' do
  scenario 'a user can add new bookmark' do
    # connection = PG.connect(dbname: 'bookmark_manager_test')

    # connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.google.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.destroyallsoftware.com');")

    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
 
  end
end
