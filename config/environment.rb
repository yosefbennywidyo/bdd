# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# SendGrid Setup
ActionMailer::Base.smtp_settings = {
  :user_name => 'app132188869@heroku.com',
  :password => 'vxmq0ypq6939',
  :domain => 'app132188869@heroku.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}