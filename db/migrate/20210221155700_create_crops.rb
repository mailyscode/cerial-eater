class CreateCrops < ActiveRecord::Migration[6.0]
  def change
    create_table :crops do |t|
      t.string :name
      t.string :country
      t.string :crop_type
      t.string :produced_quantity
      t.string :consumed_quantity

      t.timestamps
    end
  end
end
