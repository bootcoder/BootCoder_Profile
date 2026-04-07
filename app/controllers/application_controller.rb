class ApplicationController < ActionController::Base
  before_action :set_default_cache_control

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def set_default_cache_control
    return if response.cache_control.present?
    # Only cache safe, non-authenticated GET/HEAD responses
    if request.get? || request.head?
      response.headers['Cache-Control'] = 'public, max-age=300'
    else
      response.headers['Cache-Control'] = 'no-store'
    end
  end
end
