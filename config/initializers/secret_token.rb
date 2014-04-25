
Dota::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION_SECRET'] :'a1b2c3etc'