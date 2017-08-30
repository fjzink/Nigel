class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :title
      t.text :content
      t.integer :teacher_id

      t.timestamps
    end
  end
end
