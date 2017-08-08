require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    @category.products.create!(
      name: Faker::Hipster.sentences(3),
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )    
  end

  scenario "They see all products" do
    # ACT
    visit root_path
    click_on 'Add'

    # VERIFY
    expect(page).to have_css '.navbar-header'

    # VERIFY 
    expect(page).to have_text('My Cart (1)')

    # DEBUG / VERIFY
    save_screenshot
    
  end
end