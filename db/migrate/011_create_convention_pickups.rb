class CreateConventionPickups < ActiveRecord::Migration
  def self.up
    create_table :convention_pickups do |t|
    end
  end

  def self.down
    drop_table :convention_pickups
  end
end
