# frozen_string_literal: true

class Publisher < ApplicationRecord
  has_many :authors
  has_many :employees
  has_many :books

  validates :name, :address, :email, :phonenumber, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
