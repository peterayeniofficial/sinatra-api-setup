# frozen_string_literal: true

class Review < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :user_id, presence: true
  belongs_to :user
end
