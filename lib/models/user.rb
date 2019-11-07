# frozen_string_literal: true

class User < ActiveRecord::Base
  has_many :reviews, class_name: "review", foreign_key: "reference_id"
end
