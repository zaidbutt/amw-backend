class CreateAttachments < ActiveRecord::Migration[8.0]
  def change
    create_table :attachments do |t|
      t.string :parent_id
      t.references :user, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true
      t.references :media, null: false, foreign_key: true
      t.string :element_id
      t.string :type

      t.timestamps
    end
  end
end
