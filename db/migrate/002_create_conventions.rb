class CreateConventions < ActiveRecord::Migration
  def self.up
    create_table :conventions do |t|
    end
  end

  def self.down
    drop_table :conventions
  end
end
