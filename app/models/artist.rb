class Artist < ApplicationRecord
  validates :name, presence: :true, uniqueness: :true
  validates :image, presence: :true
  
  has_many :songs, dependent: :nullify
end
