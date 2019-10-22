# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :author

  validates :title, :genre, :pubdate, :isbn, presence: true
  validates :isbn, numericality: { only_integer: true }

end
