Rails.application.config.middleware.insert_before 0, Rack::Runtime do |env|
  status, headers, response = @app.call(env)

  # Only set if origin didn't specify already
  headers['Cache-Control'] ||= 'public, max-age=300'

  [status, headers, response]
end
