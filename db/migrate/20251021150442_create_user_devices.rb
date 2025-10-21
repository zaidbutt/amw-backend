class CreateUserDevices < ActiveRecord::Migration[8.0]
  def change
    create_table :user_devices do |t|
      t.string :device_token
      t.string :channel_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
