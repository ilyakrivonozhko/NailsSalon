class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :user_name, null: false
      t.string :user_phone, null: false
      t.belongs_to :window, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
