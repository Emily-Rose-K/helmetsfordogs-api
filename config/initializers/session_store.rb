if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_helmetsfordogs', domain: 'your-frontend-domain'
  else
    Rails.application.config.session_store :cookie_store, key: '_helmetsfordogs'
  end

  # TODO: Update domain once app is deployed