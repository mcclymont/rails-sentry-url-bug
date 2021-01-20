class ApplicationController < ActionController::API
  def index
    raise 'test sentry'
    render json: {hello: 'world'}
  end
end
