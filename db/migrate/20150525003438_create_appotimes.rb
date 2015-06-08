class CreateAppotimes < ActiveRecord::Migration
  def change
    create_table :appotimes do |t|
      t.datetime :appointment_date

      t.timestamps null: false
    end
  end
end
