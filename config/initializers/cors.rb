Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:3001'
    resourse '*',
      headers: :any,
      methods: %i[get post put patch delete options head]
      credentials: true
  end
end
