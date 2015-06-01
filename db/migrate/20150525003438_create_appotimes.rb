class CreateAppotimes < ActiveRecord::Migration
  def change
    create_table :appotimes do |t|
      t.integer :appointment_id
      t.string :hour

      t.timestamps null: false
    end
  end
end
