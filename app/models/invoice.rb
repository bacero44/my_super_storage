class Invoice < ApplicationRecord
  belongs_to :customer, required: true

  attr_reader :number

  before_create :assing_number

  private

  def assing_number
    self.number = 1000+Invoice.maximum(:id).to_i
  end
  

end
