# This migration comes from spraycan (originally 20120529123624)
class AddPalettePrefsToPack < ActiveRecord::Migration
  def change
    add_column :spraycan_packs, :palette_preference_hash, :text
    add_column :spraycan_palettes, :pack_id, :integer

    Spraycan::Pack.reset_column_information
    Spraycan::Palette.reset_column_information

    Spraycan::Pack.all.each do |pack|
      if palette = Spraycan::Palette.where(:guid => pack.palette_guid).first
        pack.update_attribute(:palette_preference_hash, palette.preferences.to_json)
      end
    end

    if pack = Spraycan::Pack.where(:active => true).first
      if palette = pack.palette
        palette.destroy
      end

      pack.active = false
      pack.save
      pack.active = true
      pack.save
    end
  end
end
