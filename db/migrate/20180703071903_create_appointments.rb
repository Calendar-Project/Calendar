class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :title
      t.text :text
      t.string :start_date
      t.string :start_time
      t.string :end_date
      t.string :end_time
      t.timestamps
    end
  end
end
