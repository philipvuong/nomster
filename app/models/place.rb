class Place < ApplicationRecord
  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :photos
  
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 4 }
  validates :address, presence: true
  validates :description, presence: true
end