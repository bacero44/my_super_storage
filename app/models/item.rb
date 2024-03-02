class Item < ApplicationRecord
  validates :code, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :current_price, presence: true
  validates :code, presence: true, uniqueness:true
end
