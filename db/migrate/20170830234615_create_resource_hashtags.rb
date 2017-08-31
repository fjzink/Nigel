class CreateResourceHashtags < ActiveRecord::Migration[5.1]
  def change
    create_table :resource_hashtags do |t|
      t.integer :resource_id
      t.integer :hashtag_id

      t.timestamps
    end
  end
end

