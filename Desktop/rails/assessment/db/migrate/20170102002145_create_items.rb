class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :condition
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :user

      t.timestamps
    end
  end
end
