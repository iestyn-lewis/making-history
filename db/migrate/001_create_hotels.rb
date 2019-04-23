class CreateHotels < ActiveRecord::Migration
  def self.up
    create_table :hotels do |t|
    end
  end

  def self.down
    drop_table :hotels
  end
end
