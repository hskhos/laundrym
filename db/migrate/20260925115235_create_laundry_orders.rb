class CreateLaundryOrders < ActiveRecord::Migration[8.1]
  def change
    create_table :laundry_orders do |t|
      t.string :name
      t.string :clothes
      t.decimal :amount
      t.string :status

      t.timestamps
    end
  end
end
