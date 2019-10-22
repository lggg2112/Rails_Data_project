class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phonenumber
      t.string :position
      t.references :publisher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
