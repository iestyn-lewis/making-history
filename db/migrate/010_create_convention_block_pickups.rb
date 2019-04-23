class CreateConventionBlockPickups < ActiveRecord::Migration
  def self.up
    create_table :convention_block_pickups do |t|
    end
  end

  def self.down
    drop_table :convention_block_pickups
  end
end
