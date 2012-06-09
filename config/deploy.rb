#$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Для работы rvm
require 'rvm/capistrano' # Для работы rvm
require 'bundler/capistrano' # Для работы bundler. При изменении гемов bundler автоматически обновит все гемы на сервере, чтобы они в точности соответствовали гемам разработчика.
require 'capistrano_colors' #разукрасим вывдо capistrano

#require 'capistrano/ext/multistage'

load 'deploy/assets'


#server "ror@192.168.100.5", :web, :app, :db, primary: true
#server "10.44.33.197:856", :web, :app, :db, primary: true
server "62.76.186.254:856", :web, :app, :db, primary: true
#ssh_options[:port] = 856
#default_run_options[:pty] = true

set :rails_env, "production"
set :user, "ror"
set :application, "shopchaiknet"
set :deploy_to, "/home/#{user}/apps/#{application}"
#set :bundle_cmd, "socksify bundle"
#set :application_uses_ssl, true

#set :ip_test_server, "10.44.33.197"
set :ip_test_server, ""
set :server_names, "dev.shop.chaiknet.ru"
#set :deploy_via, :remote_cache
#set :use_sudo, true

set :bundle_without, [:test, :development]
set :using_rvm, true
set :rvm_ruby_string, "1.9.3-p194-perf" # Это указание на то, какой Ruby интерпретатор мы будем использовать.
#set :rvm_ruby_string, "1.9.3-p194-perf@spree" # Это указание на то, какой Ruby интерпретатор мы будем использовать.
set :rvm_type, :user # Указывает на то, что мы будем использовать rvm, установленный у пользователя, от которого происходит деплой, а не системный rvm.

set :app_server, :unicorn
set :unicorn_workers, 2

set :web_server, :nginx
#set :nginx_remote_config, "/etc/nginx/conf.d/site-#{application}.conf"

set :scm, "git"
set :repository, "git@github.com:misteral/tpl_spr.git"
set :branch, "master"

after "deploy", "deploy:cleanup" # keep only the last 5 releases

require 'al-capistrano-recipes'




namespace :deploy do
  namespace :assets do
    task :precompile, :roles => :web, :except => { :no_release => true } do
      from = source.next_revision(current_revision)
      if capture("cd #{latest_release} && #{source.local.log(from)} vendor/assets/ app/assets/ | wc -l").to_i > 0
        run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
      else
        logger.info "Skipping asset pre-compilation because there were no asset changes"
      end
    end
  end
end






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

