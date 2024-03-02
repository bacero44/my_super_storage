class Customer < ApplicationRecord
  validates :name, presence: true
  validates :identification, presence: true, uniqueness:true
  has_many :invoices

end
