require 'rails_helper'


describe "Creating new song for Artist" do
  let!(:artist) { create :artist}

feature 'Create new song', js: true do
  scenario 'adds new song' do

    visit "artists/#{@artist}"

    fill_in 'newSong', with: 'Song Title'
    page.execute_script("$('form').submit()")

    expect(page).to have_content('Song Title')
  end
end
end
