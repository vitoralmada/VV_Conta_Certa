class CreateExpensePayers < ActiveRecord::Migration[7.1]
  def change
    create_table :expense_payers do |t|
      t.decimal :paid_amount, precision: 10, scale: 2, default: "0.0"
      t.string :description
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.references :receiver, foreign_key: { to_table: "users" }

      t.timestamps
    end
  end
end
