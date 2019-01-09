Knock.setup do |config|
  config.token_lifetime = 1.hour
  config.token_signature_algorithm = 'HS256'
  config.token_secret_signature_key = -> { Rails.application.credentials.read }
  config.not_found_exception_class_name = 'ActiveRecord::RecordNotFound'
end
