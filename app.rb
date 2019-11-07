# frozen_string_literal: true

require_relative './config/environment.rb'

class App < Sinatra::Base
  get '/' do
    json foo: 'API Setup with Sinatra'
  end
end
