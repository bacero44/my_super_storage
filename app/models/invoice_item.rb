class InvoiceItem < ApplicationRecord
  belongs_to :invoice, required: true
  belongs_to :item, required: true
  
  validates :item_id, uniqueness: { scope: :invoice_id }
end
