class CreateHotelChains < ActiveRecord::Migration
  def self.up
    create_table :hotel_chains do |t|
    end
  end

  def self.down
    drop_table :hotel_chains
  end
end
