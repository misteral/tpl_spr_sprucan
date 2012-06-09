source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server


# Deploy with Capistrano
group :production do
  gem 'mysql2'
  gem 'unicorn'
  #gem 'god'
  #gem 'bluepill'
  #gem 'foreman'

end

# To use debugger
#gem 'linecache19', :git => 'git://github.com/mark-moseley/linecache'
#gem 'ruby-debug-base19x', '~> 0.11.30.pre4'
#gem 'ruby-debug19'
#gem 'ruby-debug19', :require => 'ruby-debug'


gem 'spree'

group :development, :test do
  gem "sqlite3"
  gem "rails-erd" #for ERD
  gem 'hirb'  #nice table в irb
  #gem 'al-capistrano-recipes', :path => '/home/ror/projects/al-capistrano-recipes'
  gem 'al-capistrano-recipes',:git => 'git://github.com/misteral/al-capistrano-recipes.git'
  #gem 'dark-capistrano-recipes',:git => 'git://github.com/leifcr/capistrano-recipes.git'
  gem 'capistrano'
  gem 'rvm-capistrano'
  gem 'capistrano_colors'
  #gem 'capistrano-unicorn'
  gem 'net-ssh', :git => 'git://github.com/nessche/net-ssh.git'
end

#gem 'spree_al_import', :path => '/home/ror/projects/spr-import'
gem 'spree_al_import', :git =>'git://github.com/misteral/spr-import.git', :ref => "f01d3482d774952e504977e4e92724b34a5c8e27"
#gem 'spree_import_osc', :path => '/home/ror/projects/spree_import_osc'
gem 'spree_import_osc', :git => 'git://github.com/misteral/importer_spr.git', :ref => "7da51b116c97e60b8a20331ed82b3d1a8cd28cd8"#, :branch => "rails3"
#gem 'spree_import_sima', :path => '/home/ror/projects/spree_import_sima'
gem 'spree_import_sima', :git => 'git://github.com/misteral/par_sim.git', :ref => "d5f47c13ed188c29c5ace5529dac96a4db085376", :branch => "lvl3"

#gem 'delayed_job_active_record'
#gem 'russian'
gem 'spree_i18n', :git => 'git://github.com/misteral/spree_i18n.git', :ref => "923c6081925e4926a61b68eaa186c658cfcffba8"

