class CreateInvoices < ActiveRecord::Migration[7.1]
  def change
    create_table :invoices do |t|
      t.references :customer, null: false, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
