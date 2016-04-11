Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true
  
  config.web_console.development_only = false
  config.web_console.whitelisted_ips = '9.9.9.1'

  # config.action_mailer.default_options = { host: "9.9.9.10", port: 3098 }
  config.assets.prefix = '/dev-assets'
  config.app_domain = "9.9.9.10"
  config.action_controller.default_url_options[:host] = config.app_domain
  config.action_controller.default_url_options[:port] = 3068
  config.action_mailer.default_url_options[:host] = config.app_domain
  config.action_mailer.default_url_options[:port] = 3068
  config.asset_host = 'http://' + config.app_domain+":3068"
  
end
