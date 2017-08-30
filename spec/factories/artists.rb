FactoryGirl.define do
  sequence factory :artist do |i|
    name  "Rick Astley#{i}"
    image "http://i.imgur.com/wGBi2Sq.gif#{i}"
  end
end
