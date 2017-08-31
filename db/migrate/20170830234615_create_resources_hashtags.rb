class CreateResourcesHashtags < ActiveRecord::Migration[5.1]
  def change
    create_table :resources_hashtags do |t|
      t.integer :resource_id
      t.integer :hashtag_id

      t.timestamps
    end
  end
end
