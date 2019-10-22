# frozen_string_literal: true

class Author < ApplicationRecord
  belongs_to :publisher

  validates :name, :address, :email, :phonenumber, :nationality, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
