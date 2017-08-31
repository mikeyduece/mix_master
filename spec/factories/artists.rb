FactoryGirl.define do
  factory :artist do
    sequence :name do |i|
      "#{i}Artist-Name"
    end
    image 'http://i.imgur.com/wGBi2Sq.gif'
    # songs
  end
end