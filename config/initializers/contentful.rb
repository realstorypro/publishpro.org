ContentfulRails.configure do |config|
  config.authenticate_webhooks = true # false here would allow the webhooks to process without basic auth
  config.webhooks_username = ENV['CONTENTFUL_USERNAME']
  config.webhooks_password = ENV['CONTENTFUL_PASSWORD']
  config.access_token = 'K9FidZi8umxOugBsIJfuxt1UGltqhHxt4MYgGyo-KoA'
  config.preview_access_token = 'l_MW7hn-SyUl8bLzCfwRbssniH6tImDh8q4ikfmkfPo'
  config.management_token = ENV['CONTENTFUL_MANAGEMENT_TOKEN']
  config.space = 'kal36vxlmbnk'
  config.environment = 'master'
end
