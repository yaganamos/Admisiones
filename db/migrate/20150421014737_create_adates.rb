class CreateAdates < ActiveRecord::Migration
  def change
    create_table :adates do |t|
      t.text :date
      t.text :hour

      t.timestamps null: false
    end
  end
end
