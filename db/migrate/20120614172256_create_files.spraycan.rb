# This migration comes from spraycan (originally 20110525112015)
class CreateFiles < ActiveRecord::Migration
  def self.up
    create_table :spraycan_files do |t|
      t.string :file
      t.references :theme
      t.timestamps
    end
  end

  def self.down
    drop_table :spraycan_files
  end
end
