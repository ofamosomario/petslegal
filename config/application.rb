require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Petshop
  class Application < Rails::Application

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.autoload_paths << Rails.root.join('datatable')
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = ["br"]
    config.i18n.default_locale = :'br'

    #Rspec Configs.
    config.generators do |g|
    	g.test_framework  :rspec,
                        :view_specs => false,
                        :controller_specs => false,
                        :helper_specs => false,
                        :routing_specs => false,
                        :request_specs =>false
    end

  end
end
