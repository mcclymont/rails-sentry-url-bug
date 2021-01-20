# frozen_string_literal: true

# Note: If you want to test Sentry on local, comment out 'better_errors' in Gemfile

Sentry.init do |config|
  config.dsn = ENV.fetch('SENTRY_DSN')
  config.environment = 'dev'
  config.send_default_pii = true # so we send IP, cookie and request body

  config.before_send = lambda do |event, _hint|
    puts event.request.url
    event
  end
end

