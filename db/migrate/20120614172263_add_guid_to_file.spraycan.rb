# This migration comes from spraycan (originally 20120306121457)
class AddGuidToFile < ActiveRecord::Migration
  def change
    add_column :spraycan_files, :guid, :string

    Spraycan::File.reset_column_information

    Spraycan::File.all.each {|f| f.save }
  end
end
