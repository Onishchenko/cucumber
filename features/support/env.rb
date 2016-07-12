require 'monetize'
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'nice_bank')
require 'capybara/cucumber'

I18n.config.available_locales = :en
Capybara.app = Sinatra::Application
Sinatra::Application.set :environment, :test