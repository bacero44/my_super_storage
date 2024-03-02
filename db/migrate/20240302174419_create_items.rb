class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :code
      t.string :name
      t.text :description
      t.decimal :current_price

      t.timestamps
    end
  end
end
