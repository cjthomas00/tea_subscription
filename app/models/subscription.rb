class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :tea
  
  validates :title, presence: true
  validates :price, presence: true
  validates :status, presence: true
  validates :frequency, presence: true

  enum status: [:inactive, :active]
  
  enum frequency: [:weekly, :monthly, :quarterly, :annually]
end
