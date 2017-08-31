class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :resource_id
      t.references :favoritable, polymorphic: true

      t.timestamps
    end
  end
end
