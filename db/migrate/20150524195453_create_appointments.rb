class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :admission_request_id
      t.string :date
      t.string :type

      t.timestamps null: false
    end
  end
end
