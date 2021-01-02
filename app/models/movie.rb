# frozen_string_literal: true

class Movie < ActiveRecord::Base
  has_attached_file :image, styles: { medium: '400x600#' } # , default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\Z}
  belongs_to :user
  has_many :reviews
end
