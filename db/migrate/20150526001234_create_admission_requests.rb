class CreateAdmissionRequests < ActiveRecord::Migration
  def change
    create_table :admission_requests do |t|
      t.integer :user_id
      t.string :name
      t.string :lastname
      t.integer :document
      t.integer :grade
      t.string :gender
      t.string :status

      t.timestamps null: false
    end
  end
end
