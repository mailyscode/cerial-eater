class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :resource_type
      t.string :language
      t.string :title
      t.string :author
      t.string :url

      t.timestamps
    end
  end
end
