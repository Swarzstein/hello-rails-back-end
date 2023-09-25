class Api::GreetingsController < ApplicationController
  before_action :set_cors_headers, only: [:index]

  def index
    greeting = Greeting.order('RANDOM()').first
    render json: greeting
  end

  private

  def set_cors_headers
    headers['Access-Control-Allow-Origin'] = 'http://localhost:3000'
    headers['Access-Control-Allow-Methods'] = 'GET'
    headers['Access-Control-Allow-Headers'] = 'Content-Type'
  end
end
