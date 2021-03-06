set :application, "twitter"
set :repo_url, "git@github.com:dheerajku/twitter_app.git"

set :use_sudo, true
set :rvm_ruby_version, 'ruby-2.5.1p57'
# Deploy to the user's home directory
set :deploy_to, "/home/ubuntu/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5

# Optionally, you can symlink your database.yml and/or secrets.yml file from the shared directory during deploy
# This is useful if you don't want to use ENV variables
# append :linked_files, 'config/database.yml', 'config/secrets.yml'
set :rvm_map_bins, %w{gem rake ruby rails bundle}
set :npm_flags, '--production' # default