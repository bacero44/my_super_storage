require 'rails_helper'

RSpec.describe Invoice, type: :model do
  it "is a valid Invoice" do
    customer = create(:customer)
    invoice = build(:invoice, customer_id: customer.id)
    expect(invoice).to be_valid
  end

  it "is a invalid Invoice if Customer is missing" do
    invoice = build(:invoice, customer_id: nil)
    expect(invoice).to be_invalid
    expect(invoice.errors[:customer]).to include("must exist")
  end
end
