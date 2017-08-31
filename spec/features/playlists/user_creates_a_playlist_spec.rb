require 'rails_helper'

RSpec.feature "As a user" do
  scenario "I can create a new playlist" do
    song_one, song_two, song_three = create_list(:song, 3)
    playlist_name = "My Jams"
    visit new_playlist_path
    fill_in("Name:", with: playlist_name)
    check("song-#{song_one.id}")
    check("song-#{song_three .id}")
    click_on("Create Playlist")
    
    expect(page).to have_content(playlist_name)
    
    with_in("li:first") do
      expect(page).to have_link song_one.title, href: song_path(song_one)
    end
    
    with_in("li:last") do
      expect(page).to have_link song_three.title, href: song_path(song_three)
    end
  end
end