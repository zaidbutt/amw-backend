class CreateReports < ActiveRecord::Migration[8.0]
  def change
    create_table :reports do |t|
      t.string :name
      t.string :user_id
      t.string :email
      t.string :reason
      t.string :reported_content

      t.timestamps
    end
  end
end
