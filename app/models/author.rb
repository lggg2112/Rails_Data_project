# frozen_string_literal: true

class Author < ApplicationRecord
  belongs_to :publisher
  has_many :books
  has_many :appointments
  has_many :employees, through: :appointments

  validates :name, :address, :email, :phonenumber, :nationality, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
