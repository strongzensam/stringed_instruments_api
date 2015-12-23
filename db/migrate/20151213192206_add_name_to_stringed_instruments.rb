class AddNameToStringedInstruments < ActiveRecord::Migration
  def change
    add_column :stringed_instruments, :name, :string
  end
end
