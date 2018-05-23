Clearance.configure do |config|
  config.mailer_sender = "reply@example.com"
  config.rotate_csrf_on_sign_in = true
  config.cookie_expiration = lambda { |cookies| 5.minute.from_now.utc }
end
