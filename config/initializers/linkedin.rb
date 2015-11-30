# It's best practice to keep secret credentials out of source code.
# You can, of course, hardcode dev keys or directly pass them in as the
# first two arguments of LinkedIn::OAuth2.new
LinkedIn.configure do |config|
  config.client_id     = Rails.application.secrets.LINKEDIN_CLIENT_ID
  config.client_secret = Rails.application.secrets.LINKEDIN_CLIENT_SECRET

  # This must exactly match the redirect URI you set on your application's
  # settings page. If your redirect_uri is dynamic, pass it into
  # `auth_code_url` instead.
end