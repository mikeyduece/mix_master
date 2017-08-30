require 'rails_helper'

RSpec.feature "As a user I can" do
  scenario "edit an aritsts info" do
    artist = Artist.create(name: 'Queen', image: "http://cps-static.rovicorp.com/3/JPG_250/MI0003/201/MI0003201089.jpg?partner=allrovi.com")
    visit "/artists/#{artist.id}"
    artist_image_path = 'http://i.imgur.com/wGBi2Sq.gif'
    click_on('Edit')
    expect(current_path).to eq(edit_artist_path(artist))
    
    fill_in('Name', with: 'Rick Astley')
    fill_in('Image', with: artist_image_path)
    click_on('Submit')
    
    expect(current_path).to eq(artist_path(artist))
    expect(page).to have_content('Rick Astley')
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
    
  end
end