require 'rails_helper'

RSpec.describe "As a user I can" do
  it "edit an aritsts info" do
    artist = Artist.create(name: 'Queen', image: "http://cps-static.rovicorp.com/3/JPG_250/MI0003/201/MI0003201089.jpg?partner=allrovi.com")
    visit "/artists/#{artist.id}"
    click_on('Edit')
    
    expect(current_path).to eq(edit_artist_path)
    
    fill_in('Name', with: 'Rick Astley')
    fill_in('Image', with: 'http://i.imgur.com/wGBi2Sq.gif')
    
    expect(current_path).to eq(artist_path(artist))
    expect(page).to have_content('Rick Astley')
    expect(page).to have_("img[src=\"#{artist_image_path}\"]")
    
  end
end