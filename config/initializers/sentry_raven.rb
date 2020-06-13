# frozen_string_literal: true

Raven.configure do |config|
  config.dsn = "https://#{Global.sentry.key}:#{Global.sentry.secret}@o322721.ingest.sentry.io/1820548"
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
  config.environments = %w[test production development]
end
