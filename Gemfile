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


gem 'spree', '~> 1.1.1'

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

#gem 'spree_al_import', :path => '/home/ror/projects/spr-import'
gem 'spree_al_import', :git =>'git://github.com/misteral/spr-import.git', :ref => "9931c92db07a02b2370b139271cf1c8d102d223f"
gem 'spree_import_osc', :path => '/home/ror/projects/spree_import_osc'
#gem 'spree_import_osc', :git => 'git://github.com/misteral/importer_spr.git', :ref => "11ed830d44f9f6889af587a635e91070e394b5a3"#, :branch => "rails3"
#gem 'spree_import_sima', :path => '/home/ror/projects/spree_import_sima'
gem 'spree_import_sima', :git => 'git://github.com/misteral/par_sim.git', :ref => "46d8bb02cdb544d46dc8b76f4436797907eeb7c9", :branch => "lvl3"

#gem 'spree_rbk_checkout', :path => '/home/ror/projects/spree_rbk_checkout'
gem 'spree_rbk_checkout', :git => 'git://github.com/misteral/spr_rbk.git', :ref => 'd037f39e091654825dd4830982bf6a149acc27d3'
#gem 'spree_cash_on_delivery', :path => '/home/ror/projects/spree_cash'
gem 'spree_cash_on_delivery', :git => 'git://github.com/misteral/spr_cash.git', :ref => '29ddc97780e34059639ceb3f97727529795aa893'

#gem 'delayed_job_active_record'
#gem 'russian'
gem 'spree_i18n', :git => 'git://github.com/misteral/spree_i18n.git', :ref => "5e204c0e33ff36c0c84c0fe05a57b7ebee9def26"
#gem 'spree_i18n', :path => '/home/ror/projects/spree_i18n'

