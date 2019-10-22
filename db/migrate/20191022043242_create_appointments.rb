# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :shcedule
      t.references :author
      t.references :employee

      t.timestamps
    end
  end
end
