require 'rails_helper'

RSpec.describe "User" do
  it "can visit index page" do 
    artist = create(:artist)
    visit '/artists'
    
    expect(page).to have_content(artist.name)
  end
  
  it "can visit page to create new artist" do

    visit '/artists'
    click_on('Create New Artist')
    
    expect(current_path).to eq(new_artist_path)
  end
  
  it "can create new artist" do
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_250/MI0003/201/MI0003201089.jpg?partner=allrovi.com"
    
    visit '/artists/new'
    fill_in('Name', with: "Queen")
    fill_in('Image', with: artist_image_path)
    click_on('Submit')
    save_and_open_page
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
    expect(page).to have_content("Queen")
  end
end