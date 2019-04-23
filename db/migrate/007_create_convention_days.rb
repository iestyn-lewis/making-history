class CreateConventionDays < ActiveRecord::Migration
  def self.up
    create_table :convention_days do |t|
    end
  end

  def self.down
    drop_table :convention_days
  end
end
