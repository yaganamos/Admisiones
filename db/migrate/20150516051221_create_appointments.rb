class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :admission_request, index: true
      t.datetime :date

      t.timestamps null: false
    end
    add_foreign_key :appointments, :admission_requests
  end
end
