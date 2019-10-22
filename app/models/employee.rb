# frozen_string_literal: true

class Employee < ApplicationRecord
  belongs_to :publisher
  has_many :appointments
  has_many :authors, through: :appointments

  validates :name, :address, :email, :phonenumber, :position, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
