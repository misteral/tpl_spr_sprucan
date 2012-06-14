# This migration comes from spraycan (originally 20120523092709)
class AddGalleryFlagToThemes < ActiveRecord::Migration
  def change
    add_column :spraycan_packs, :gallery, :boolean, :default => false
  end
end
