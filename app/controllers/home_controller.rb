class HomeController < ApplicationController
  # entrypoint into the app
  def index
    json_response({ service: 'marketplace-api' })
  end
end
