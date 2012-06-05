#require 'ffaker'
require "spree/core"

namespace :spree do
  desc 'Flush DB!!! and load my_fixtures data'
  task :load_my => :environment do
    sample_path = File.join(File.dirname(__FILE__), '..', '..', 'db', 'my_fixture')
    #ENV['AUTO_ACCEPT'] = 'yes'
    #puts "Drop DB ..."
    #Rake::Task['db:drop'].invoke
    #puts "Create DB ..."
    #Rake::Task['db:create'].invoke
    #puts "Migrate DB ..."
    #Rake::Task['db:migrate'].invoke
    #puts "Seed DB ..."
    #Rake::Task['db:seed'].invoke
    puts "Flush Taxon and Taxonomies ..."
    t = Spree::Taxon.all
    t.each {|r| r.destroy}

    Spree::Taxon.rebuild!

    f = Spree::Taxonomy.all
    f.each {|r| r.destroy}


    puts "Load my_fixtures DB ..."
    Rake::Task['db:load_dir'].reenable
    Rake::Task['db:load_dir'].invoke(sample_path)
  end
end