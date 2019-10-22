# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :employee
  belongs_to :author

  validates :scheduled, presence: true
end
