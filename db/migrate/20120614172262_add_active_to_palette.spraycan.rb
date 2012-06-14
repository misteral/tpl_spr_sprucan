# This migration comes from spraycan (originally 20111215143842)
class AddActiveToPalette < ActiveRecord::Migration
  def change
    add_column :spraycan_palettes, :active, :boolean, :default => false
  end
end
