class CreateConventionBlockDayPickups < ActiveRecord::Migration
  def self.up
    create_table :convention_block_day_pickups do |t|
    end
  end

  def self.down
    drop_table :convention_block_day_pickups
  end
end
