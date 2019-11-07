# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'

require 'io/console'
require 'bundler/setup'
require 'faker'
require 'sinatra/json'
Bundler.require(:default, ENV['SINATRA_ENV'])
require_all 'lib'
require './app'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.db'
)

ActiveRecord::Base.logger = nil
