class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :user_id, index: true
      t.datetime :completed_at

      t.timestamps null: false
    end
  end
end
