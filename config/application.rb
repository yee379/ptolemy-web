require File.expand_path('../boot', __FILE__)

require 'yaml'
STATS_CONFIG = YAML.load(File.read(File.expand_path('../stats.yml', __FILE__)))  

require 'rails/all'
require 'rack-webauth'
require 'ostruct'

# Assets should be precompiled for production (so we don't need the gems loaded then)
Bundler.require(*Rails.groups(assets: %w(development test)))

module PtolemyWeb
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # required for coffeebeans gems
    config.assets.initialize_on_precompile = false

    # need to add swfs to assets for dataTables
    config.serve_static_files = true

    # Enable the asset pipeline
    config.assets.enabled = true
    config.assets.paths << Rails.root.join("app","assets","flash")
    
    # autoload libs
    # config.autoload_paths += %W(#{config.root}/lib)
    
    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
    # config.active_record.time_zone_aware_attributes = true
    # config.time_zone = 'Pacific Time (US & Canada)'
    # config.active_record.default_timezone = :utc
    # 'Pacific Time (US & Canada)'
    
    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # webauth - seems to cache last user, logging in people as last https user if current user uses http, so force all ssl
    # config.force_ssl = true
    config.middleware.use Rack::Webauth

  end
end
