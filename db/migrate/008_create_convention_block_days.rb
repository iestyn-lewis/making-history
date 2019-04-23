class CreateConventionBlockDays < ActiveRecord::Migration
  def self.up
    create_table :convention_block_days do |t|
    end
  end

  def self.down
    drop_table :convention_block_days
  end
end
