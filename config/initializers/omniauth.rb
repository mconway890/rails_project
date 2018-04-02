Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end

Devise.setup do |config|
  config.omniauth :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
