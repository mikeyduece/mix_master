require 'rails_helper'

RSpec.feature "User submits a new song" do
  scenario "they see the song in a list" do
    artist = Artist.create!(name: "Rick Astley", image: 'http://i.imgur.com/wGBi2Sq.gif')
    visit artist_path(artist)
    fill_in('Title:', with: "Never Gonna Give You Up")
    click_on('Create Song')
    
    expect(current_path).to eq(artist_path(artist))
    expect(page).to have_content("Never Gonna Give You Up")
  end
end 