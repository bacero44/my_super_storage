require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "Is valid with valid attributes" do
    customer = create(:customer)
    expect(customer).to be_valid
  end

  it "Is invalid without name" do
    customer = build(:customer, name: nil)
    expect(customer).to be_invalid
    expect(customer.errors[:name]).to include("can't be blank")
  end

  it "Is invalid without identification" do
    customer = build(:customer, identification: nil)
    expect(customer).to be_invalid
    expect(customer.errors[:identification]).to include("can't be blank")
  end

  it "is valid with a non-unique identification" do
    pre_customer = create(:customer, identification:'123456789')
    new_customer = build(:customer, identification:'123456789')

    expect(new_customer).to be_invalid
    expect(new_customer.errors[:identification]).to include("has already been taken")
  end
end
