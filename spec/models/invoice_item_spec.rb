require 'rails_helper'

RSpec.describe InvoiceItem, type: :model do
  it "is a valid invoice Item" do
    invoice_item = create(:invoice_item)
    puts invoice_item.inspect
    expect(invoice_item).to be_valid
  end

  it 'is not valid with a duplicate item and invoice combination' do
    item = create(:item)
    invoice = create(:invoice)
    invoice_item_1 = create(:invoice_item, item: item, invoice:invoice)
    invoice_item_2 = build(:invoice_item, item: item, invoice:invoice)
    expect(invoice_item_2).to be_invalid
    expect(invoice_item_2.errors[:item_id]).to include("has already been taken")
  end
end
