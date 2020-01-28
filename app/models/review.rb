class Review < ApplicationRecord
  validates :content, presence: true
  validates :city_name, presence: true
  validates :country_name, presence: true
  validates :author, presence: true
  validates :rating, presence: true
end
