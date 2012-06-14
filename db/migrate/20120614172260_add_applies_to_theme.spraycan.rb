# This migration comes from spraycan (originally 20111209175533)
class AddAppliesToTheme < ActiveRecord::Migration
  def change
    add_column :spraycan_themes, :applies_to, :string
  end
end
