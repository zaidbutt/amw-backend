class CreateStorageStatistics < ActiveRecord::Migration[8.0]
  def change
    create_table :storage_statistics do |t|
      t.datetime :timestamp
      t.string :file_size
      t.string :s3_key
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
