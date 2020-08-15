Rails.application.config.middleware.insert_before 0, Rack::Cors do 
    allow do
      origins 'http://localhost:3000'
    
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
  end

# TODO: This configuration is ideal while you are working on the development environment.
# Once your application is ready for production, you will need to change the origin to your deployed 
# front-end client’s domain address.