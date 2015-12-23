class CreateStringedInstruments < ActiveRecord::Migration
  def change
    create_table :stringed_instruments do |t|
      t.integer :number_of_strings
      t.string :tuning
      t.boolean :fretless
      t.string :body_type

      t.timestamps null: true
    end
  end
end
