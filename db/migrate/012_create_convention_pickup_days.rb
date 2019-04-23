class CreateConventionPickupDays < ActiveRecord::Migration
  def self.up
    create_table :convention_pickup_days do |t|
    end
  end

  def self.down
    drop_table :convention_pickup_days
  end
end
