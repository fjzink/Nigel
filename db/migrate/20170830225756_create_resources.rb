class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :title
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
