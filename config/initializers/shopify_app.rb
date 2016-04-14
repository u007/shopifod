ShopifyApp.configure do |config|
  config.api_key = ENV['shopify_id']
  config.secret = ENV['shopify_token']
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  # config.redirect_uri = "http://9.9.9.10:3068/auth/shopify/callback"
end
