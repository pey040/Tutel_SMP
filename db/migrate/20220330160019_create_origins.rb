class CreateOrigins < ActiveRecord::Migration[7.0]
  def change
    create_table :origins do |t|
      t.string :name
      t.string :image
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
