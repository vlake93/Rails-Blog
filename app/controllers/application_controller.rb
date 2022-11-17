class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: 'vic', password: 'vic', only: [:create, :update, :destroy]
end
