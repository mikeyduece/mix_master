require 'rails_helper'

RSpec.describe "As a user I can" do
  it "delete an artist" do
    artist = Artist.create!(name: "Queen", image: "http://cps-static.rovicorp.com/3/JPG_250/MI0003/201/MI0003201089.jpg?partner=allrovi.com")
    artist_1 = Artist.create!(name: "Rick Astley", image: 'http://i.imgur.com/wGBi2Sq.gif')
    expect(Artist.count).to eq(2)
    
    visit artist_path(artist)
    click_on('Delete')
    
    expect(current_path).to eq(artists_path)
    expect(Artist.count).to eq(1)
  end
end