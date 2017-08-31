FactoryGirl.define do
  factory :song do
    sequence :title do |i|
      "#{i}Song-Title"
    end
    artist
  end
end