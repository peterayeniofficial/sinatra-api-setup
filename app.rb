# frozen_string_literal: true

require_relative './config/environment.rb'

class App < Sinatra::Base
  get '/' do
    json foo: 'API Setup with Sinatra'
  end

  get '/reviews' do
    # get all reviews
    content_type :json
    reviews = Review.all
    json reviews: reviews
  end

  get '/reviews/:id' do
    # get a single review
    content_type :json
    review = Review.find(params[:id])
    json review: review
    
  end

  post '/reviews' do
    # add new review
    
  end

  patch '/reviews/:id' do
    # update a review
    content_type :json
    review = Review.find(params[:id])

    title = params[:title]
    content = params[:content]
    rating = params[:rating]
    user_id = params[:user_id]

    updated = review.update(title: title, content: content, rating: rating, user_id: user_id)
    if updated == true
      status 200
      json review: review
    else
      status 500
      json review: "review.errors.full_message"
    end
  end

  delete '/reviews/:id' do
    # delete a review
    
  end
end
