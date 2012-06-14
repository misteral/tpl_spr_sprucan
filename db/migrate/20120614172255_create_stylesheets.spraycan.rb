# This migration comes from spraycan (originally 20110323205407)
class CreateStylesheets < ActiveRecord::Migration
  def self.up
    create_table :spraycan_stylesheets do |t|
      t.references :theme
      t.string :name
      t.text :css
      t.timestamps
    end

    Spraycan::Stylesheet.reset_column_information

    Spraycan::Stylesheet.create({:name => "application", :css => "body {}", :theme => Spraycan::Theme.first}, :without_protection => true)
  end

  def self.down
    drop_table :sspraycan_tylesheets
  end
end
