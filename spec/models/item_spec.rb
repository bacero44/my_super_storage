require 'rails_helper'

RSpec.describe Item, type: :model do
  it "is valid Item" do
    item = build(:item)
    expect(item).to be_valid
  end

  it "is not valid without code" do
    item = build(:item, code:nil)
    expect(item).to be_invalid
    expect(item.errors[:code]).to include("can't be blank")
  end
  it "is not valid without name" do
    item = build(:item, name:nil)
    expect(item).to be_invalid
    expect(item.errors[:name]).to include("can't be blank")
  end
  it "is not valid without description" do
    item = build(:item, description:nil)
    expect(item).to be_invalid
    expect(item.errors[:description]).to include("can't be blank")
  end
  it "is not valid without price" do
    item = build(:item, current_price:nil)
    expect(item).to be_invalid
    expect(item.errors[:current_price]).to include("can't be blank")
  end

  it "is invalid with a non-unique code " do
    old_item = create(:item)
    item = build(:item,code: old_item.code)
    expect(item).to be_invalid
    expect(item.errors[:code]).to include("has already been taken")
  end

end
