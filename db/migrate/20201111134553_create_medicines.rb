class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :Name
      t.string :Type
      t.timestamps
    end
  end
end
