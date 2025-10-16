# config/puma.rb
max_threads_count = ENV.fetch("RAILS_MAX_THREADS", 5).to_i
min_threads_count = ENV.fetch("RAILS_MIN_THREADS", max_threads_count).to_i
threads min_threads_count, max_threads_count

port        ENV.fetch("PORT", 3000)
environment ENV.fetch("RAILS_ENV", "production")
workers     ENV.fetch("WEB_CONCURRENCY", 0).to_i # 0 => single process (good for small EC2)

# DO NOT daemonize or redirect; keep logs to STDOUT/ERR
# stdout_redirect is intentionally not used

preload_app!

# Make sure STDOUT/ERR are line-buffered
before_fork { $stdout.sync = true; $stderr.sync = true }
