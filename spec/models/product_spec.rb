require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    # it { is_expected.to validate_presence_of(:name) }
    # it { is_expected.to validate_presence_of(:price) }
    # it { is_expected.to validate_presence_of(:quantity) }
    # it { is_expected.to validate_presence_of(:category) }
  
    it "Validates name:" do
      @product = Product.create!(
        name: 'Dragon Ball Z',
        price: 99.99,
        quantity: 5,
        category: 'Games'
      )
    expect(Product.save)
  end
end


  # validates :name, presence: true
  # validates :price, presence: true
  # validates :quantity, presence: true
  # validates :category, presence: true



# class CreateProducts < ActiveRecord::Migration
#   def change
#     create_table :products do |t|
#       t.string :name
#       t.text :description
#       t.string :image
#       t.integer :price_cents
#       t.integer :quantity

#       t.timestamps null: false
#     end
#   end
# end