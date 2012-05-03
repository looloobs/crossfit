# Your Applications "Name"
set :application, "crossfit"

# The URL to your applications repository
set :repository,  "git://github.com/looloobs/crossfit.git"
set :scm, "git"
set :scm_verbose, true
set :git_enable_submodules, 1

# Uncomment this line if you're using SVN.  It makes deployments much faster
set :deploy_via, :remote_cache

# Require subversion to do an export instead of a checkout.
set :checkout, 'export'

# The user you are using to deploy with (This user should have SSH access to your server)
set :user, "deploy"

# We want to deploy everything under your user, and we don't want to use sudo
set :use_sudo, false

# Where to deploy your application to.
set :deploy_to, "/home/deploy/icrossfitbecause.com/"

# -------------------------------- Server Definitions --------------------------------
# Define the hostname of your server.  If you have multiple servers for multiple purposes, we can define those below as well.
set :server_name, "67.214.214.71"

# We're assuming you're using a single server for your site, but if you have a separate asset server or database server, you can specify that here.
role :app, server_name
role :web, server_name
role :db,  server_name, :primary => true


# -------------------------------- Final Config --------------------------------
# This configuration option is helpful when using svn+ssh but doesn't hurt anything to leave it enabled always.
default_run_options[:pty] = true

default_run_options[:pty] = true 

namespace :deploy do
  task :restart do
    run "touch #{deploy_to}/current/tmp/restart.txt"
  end
  
  task :start do
    run "touch #{deploy_to}/current/tmp/restart.txt"
  end
end