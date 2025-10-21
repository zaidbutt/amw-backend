class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.text :bio
      t.string :image_url

      t.timestamps
    end
  end
end
