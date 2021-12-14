require 'rails_helper'

RSpec.describe "Merchants Show Page" do
  before :each do
    @merchant = Merchant.create!(name: "Bob Belcher")
    @merchant2 = Merchant.create!(name: "Linda Belcher")
    @merchant3 = Merchant.create!(name: "Jimmy Pesto")
    @item = @merchant.items.create!(name: "burger", description: "juicy", unit_price: 12)
    @item2 = @merchant.items.create!(name: "burger of the day", description: "even jucier", unit_price: 16)
    @item3 = @merchant.items.create!(name: "fries", description: "good for you, we promise", unit_price: 4)
    @item4 = @merchant3.items.create!(name: "chicken pesto", description: "good not great", unit_price: 19)
    @item5 = @merchant3.items.create!(name: "surf no turf", description: "its just a lobster", unit_price: 23)
  end

  it "shows a merchant and it's items" do
    visit "/merchants/#{@merchant.id}"

    expect(page).to have_content(@item.name)
    expect(page).to have_content(@item2.name)
    expect(page).to have_content(@item3.name)
    expect(page).to_not have_content(@item4.name)
  end
end
