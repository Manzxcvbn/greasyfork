Sentry.init do |config|
  config.dsn = Rails.application.credentials.sentry_api_key
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]
  config.excluded_exceptions += ['JSON::ParserError', 'Sidekiq::JobRetry::Skip', 'Sidekiq::Shutdown', 'Puma::HttpParserError', 'ActionDispatch::RemoteIp::IpSpoofAttackError', 'ActiveStorage::FileNotFoundError']
  config.traces_sample_rate = 0.005
  config.profiles_sample_rate = 0.005
  config.metrics.enabled = true
end
