set :application, "TestAuth"
set :domain,      "developmentlocatie.nl"
set :user,  "root"
set :deploy_to,   "/home/admin/web/developmentlocatie.nl/public_html/"
set :app_path,    "app"
set :shared_files,      ["app/config/parameters.yml"]
set :use_composer, true

# Symfony console bin
set :symfony_console,  "./bin/console"
 # Symfony log path
set :log_path, "var/logs"

# Symfony cache path
set :cache_path, "var/cache"

# Symfony config file path
set :app_config_path,   app_path + "/config"

set   :scm,           :git
set   :repository,    "https://github.com/kevinkrs/TestAuth.git"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain, :primary => true       # This may be the same as your `Web` server

set  :keep_releases,  3

# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL