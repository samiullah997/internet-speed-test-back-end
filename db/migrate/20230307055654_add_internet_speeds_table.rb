class AddInternetSpeedsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :internet_speeds, id: :uuid do |t|
      t.references :place, null: false, foreign_key: true, index: true, type: :uuid
      t.decimal :download_speed, null: false, precision: 15, scale: 2
      t.string :download_units, null: false

      t.timestamps
    end
  end
end
