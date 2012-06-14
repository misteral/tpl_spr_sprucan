# This migration comes from spraycan (originally 20110704125854)
class AddSequenceToOverride < ActiveRecord::Migration
  def change
    add_column :spraycan_view_overrides, :sequence, :string, :default => "before"
    add_column :spraycan_view_overrides, :sequence_target, :string, :default => ""
  end
end
