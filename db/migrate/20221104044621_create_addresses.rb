class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :address, null: false
      t.string :city, null: false
      t.string :province_code, index: true
      t.string :country_code, null: false, index: true
      t.string :postal_code, null: false

      t.belongs_to :restaurant
      t.timestamps
    end
  end
end
