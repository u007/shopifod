require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Example
  class Application < Rails::Application
    config.action_dispatch.default_headers['P3P'] = 'CP="Not used"'
    config.action_dispatch.default_headers.delete('X-Frame-Options')
    config.active_record.raise_in_transactional_callbacks = true
    
    config.action_mailer.default_url_options = {
      host: 'localhost',
      port: 3068
    }

    config.action_controller.default_url_options = {
      host: "localhost",
      port: 3068
    }
  end
end
