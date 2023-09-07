class CreateMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :masters do |t|
      t.string :name, null: false, index: { unique: true }
      t.text :info, null: false
      t.string :email, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
