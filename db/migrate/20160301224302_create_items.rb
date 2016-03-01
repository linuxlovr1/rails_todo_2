class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :items

      t.timestamps null: false
    end
  end
end
