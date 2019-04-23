class CreateConventionGroups < ActiveRecord::Migration
  def self.up
    create_table :convention_groups do |t|
    end
  end

  def self.down
    drop_table :convention_groups
  end
end
