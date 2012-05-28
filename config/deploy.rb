#$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Для работы rvm
require 'rvm/capistrano' # Для работы rvm
require 'bundler/capistrano' # Для работы bundler. При изменении гемов bundler автоматически обновит все гемы на сервере, чтобы они в точности соответствовали гемам разработчика.
require 'capistrano_colors' #разукрасим вывдо capistrano

#require 'capistrano/ext/multistage'




#server "ror@192.168.100.5", :web, :app, :db, primary: true
server "10.44.33.197", :web, :app, :db, primary: true

set :rails_env, "production"
set :user, "ror"
set :application, "shopchaiknet"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
#set :use_sudo, true

set :bundle_without, [:test, :development]
set :using_rvm, true
# set :rvm_ruby_string, "1.9.3-p194-perf@#{application}" # Это указание на то, какой Ruby интерпретатор мы будем использовать.
set :rvm_type, :user # Указывает на то, что мы будем использовать rvm, установленный у пользователя, от которого происходит деплой, а не системный rvm.

set :app_server, :unicorn
set :web_server, :nginx
#set :nginx_remote_config, "/etc/nginx/conf.d/site-#{application}.conf"

set :scm, "git"
set :repository, "git@github.com:misteral/tpl_spr.git"
set :branch, "master"

after "deploy", "deploy:cleanup" # keep only the last 5 releases

require 'al-capistrano-recipes'



#require 'capistrano-unicorn'
#role :web, "nginx"                          # Your HTTP server, Apache/etc
#role :app, "your app-server here"                          # This may be the same as your `Web` server
#role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run


# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
