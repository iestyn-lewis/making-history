class CreateConventionBlocks < ActiveRecord::Migration
  def self.up
    create_table :convention_blocks do |t|
    end
  end

  def self.down
    drop_table :convention_blocks
  end
end
