require 'rails_helper'

RSpec.describe "As a user I can" do
  it "can visit index page and see list of Artists" do 
    artist = Artist.create(name: 'Queen', image: "http://cps-static.rovicorp.com/3/JPG_250/MI0003/201/MI0003201089.jpg?partner=allrovi.com")
    visit '/artists'

    expect(page).to have_content('artist.name')
  end
  
  it "click on artist name to link to individual show page" do
    artist = Artist.create(name: 'Queen', image: "http://cps-static.rovicorp.com/3/JPG_250/MI0003/201/MI0003201089.jpg?partner=allrovi.com")
    
    visit '/artists'
    click_on('artist.name')
    expect(current_path).to eq(artist_path(artist))
  end
end