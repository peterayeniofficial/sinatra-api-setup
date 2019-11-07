# frozen_string_literal: true

class Review < ActiveRecord::Base
  belongs_to :user, class_name: "user", foreign_key: "user_id"
end
