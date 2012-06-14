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

gem 'spree', '~> 1.1.1'
#gem 'spree', :path => '/home/ror/projects/spree'

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




group :development, :test do
  gem "sqlite3"
  gem "rails-erd" #for ERD
  gem 'hirb'  #nice table в irb
  #gem 'al-capistrano-recipes', :path => '/home/ror/projects/al-capistrano-recipes'
  #gem 'al-capistrano-recipes',:git => 'git://github.com/misteral/al-capistrano-recipes.git'
  #gem 'dark-capistrano-recipes',:git => 'git://github.com/leifcr/capistrano-recipes.git'
  #gem 'cap-recipes',:path => '/home/ror/projects/cap-recipes'
  gem 'capistrano'
  gem 'rvm-capistrano'
  gem 'capistrano_colors'
  #gem 'capistrano-unicorn'
  gem 'net-ssh', :git => 'git://github.com/nessche/net-ssh.git'

end
#gem 'spree_i18n', :path => '/home/ror/projects/spree_i18n'
gem 'spree_i18n', :git => 'git://github.com/misteral/spree_i18n.git'

gem 'spree_al_import', :git =>'git://github.com/misteral/spr-import.git'
#gem 'spree_al_import', :path => '/home/ror/projects/spr-import'

#gem 'spree_import_osc', :git => 'git://github.com/misteral/importer_spr.git'
gem 'spree_import_osc', :path => '/home/ror/projects/spree_import_osc'

gem 'spree_import_sima', :git => 'git://github.com/misteral/par_sim.git', :branch => "lvl3"
#gem 'spree_import_sima', :path => '/home/ror/projects/spree_import_sima'

#gem 'spree_rbk_checkout', :git => 'git://github.com/misteral/spr_rbk.git'
gem 'spree_rbk_checkout', :path => '/home/ror/projects/spree_rbk_checkout'

gem 'spree_cash_on_delivery', :git => 'git://github.com/misteral/spr_cash.git'
#gem 'spree_cash_on_delivery', :path => '/home/ror/projects/spree_cash'