#$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Для работы rvm
require 'rvm/capistrano' # Для работы rvm
require 'bundler/capistrano' # Для работы bundler. При изменении гемов bundler автоматически обновит все гемы на сервере, чтобы они в точности соответствовали гемам разработчика.
require 'capistrano_colors' #разукрасим вывдо capistrano

#require 'capistrano/ext/multistage'

#load 'deploy/assets'


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
set :deploy_via, :remote_cache
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
#set :nginx_sites_enabled_path, '/opt/nginx_unicorn/conf/sites-enabled'
set :scm, "git"
set :repository, "git@github.com:misteral/tpl_spr.git"
set :branch, "master"

after "deploy", "deploy:cleanup" # keep only the last 5 releases

require 'al-capistrano-recipes'



#require 'rubygems'
#require "bundler/capistrano"
#require 'rvm/capistrano' # Для работы rvm
#require 'capistrano_colors' #разукрасим вывдо capistrano
#
## =============================================================================
## GENERAL SETTINGS
## =============================================================================
##server "ror@192.168.100.5", :web, :app, :db, primary: true
##server "10.44.33.197:856", :web, :app, :db, primary: true
#server "62.76.186.254:856", :web, :app, :db, primary: true
#
#set :application,  "chaiknet"
##set :deploy_to,  "/var/apps/#{application}"
#set :deploy_via, :remote_cache
#set :scm, :git
#set :repository, "git@github.com:misteral/tpl_spr.git"
#set :git_enable_submodules, 1
#set :keep_releases, 3
#set :user, "ror"
##set :runner, "ror"
##set :password, "demo567"
#set :use_sudo, false
#set :branch, 'master'
#
#set :deploy_to, "/home/#{user}/apps/#{application}"
#
#set :using_rvm, true
#set :rvm_ruby_string, "1.9.3-p194-perf" # Это указание на то, какой Ruby интерпретатор мы будем использовать.
##set :rvm_ruby_string, "1.9.3-p194-perf@spree" # Это указание на то, какой Ruby интерпретатор мы будем использовать.
#set :rvm_type, :user
#
#set :rails_env, "production"
##set :bundle_without, [:test, :development]
#
#set :base_ruby_path, ""
#
#
#ssh_options[:forward_agent] = true
#ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]
#ssh_options[:paranoid] = false
#default_run_options[:pty] = true
#
## =============================================================================
## RECIPE INCLUDES
## =============================================================================
#
#require 'cap_recipes/tasks/nginx_unicorn'
#require 'cap_recipes/tasks/god'
#require 'cap_recipes/tasks/mysql'
## require 'cap_recipes/tasks/memcache'
## require 'cap_recipes/tasks/juggernaut'
## require 'cap_recipes/tasks/delayed_job'
# require 'cap_recipes/tasks/rails'

