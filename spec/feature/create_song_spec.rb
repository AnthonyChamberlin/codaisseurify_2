 require 'rails_helper'
#
# feature 'Create new song', js: true do
#   let!(:artist) { create :artist}
#   scenario 'adds new song' do
#
#     visit artist_path(id)
#
#     fill_in 'newSong', with: 'Song Title'
#     page.execute_script("$('form').submit()")
#
#     expect(page).to have_content('Song Title')
#     end
#   end

feature 'manage songs', js: true do
  let(:artist) { create :artist }
  let!(:song1) { create :song , artist: artist, id: '500' }


  scenario 'adds a song' do
    visit artist_path(artist)

    fill_in 'newSong', with: 'Song Title'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('Song Title')
  end
end
