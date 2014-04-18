# Load the rails application
require File.expand_path('../application', __FILE__)
APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
# Initialize the rails application
Ordering::Application.initialize!

require 'phaxio'
Phaxio.config do |config|
	config.api_key = "b4b5fa935e60b20bd5ad7860f8f553c3f1d1d738"
	config.api_secret = "1d6e0b8260a1a9b5b2b0ea1fe8c7312a6eddc4c1"
end