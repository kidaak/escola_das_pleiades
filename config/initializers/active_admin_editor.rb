ActiveAdmin::Editor.configure do |config|
  config.s3_bucket = Rails.application.secrets.s3_bucket_name
  config.aws_access_key_id = Rails.application.secrets.access_key_id
  config.aws_access_secret = Rails.application.secrets.secret_access_key
  # config.storage_dir = 'uploads'
end
