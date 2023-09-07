class CreateWindows < ActiveRecord::Migration[7.0]
  def change
    create_table :windows do |t|
      t.datetime :time, null: false
      t.belongs_to :master, null: false, foreign_key: true
      t.timestamps
    end
  end
end
