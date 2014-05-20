Paperclip::Attachment.default_options.merge!(
  storage: :s3,
  :s3_credentials => {
    bucket: Rails.application.secrets.s3_bucket_name,
    access_key_id: Rails.application.secrets.access_key_id,
    secret_access_key: Rails.application.secrets.secret_access_key
  }
)
