ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.sendgrid.net',
  :port                 =>  '587',
  :authentication       =>  :plain,
  :user_name            =>  'app132188869@heroku.com',
  :password             =>  'vxmq0ypq6939',
  :domain               =>  'heroku.com',
  :enable_starttls_auto  =>  true
}