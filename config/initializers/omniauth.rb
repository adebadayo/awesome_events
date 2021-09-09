Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github,
    Rails.application.credentials.github[:client_id],
    Rails.application.credentials.github[:client_secret]

  # if Rails.env.development? || Rails.env.test?
  #   provider :github, "YOUR_CLIENT_ID", "YOUR_CLIENT_SECRET"
  # else
  #   provider :github,
  #     Rails.application.credentials.github[:client_id],
  #     Rails.application.credentials.github[:client_secret]
  # end
end
