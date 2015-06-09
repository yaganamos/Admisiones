class CreateAppotimes < ActiveRecord::Migration
  def change
    create_table :appotimes do |t|
      t.datetime :appointment_date
      t.string :appointment_type

      t.timestamps null: false
    end
  end
end
