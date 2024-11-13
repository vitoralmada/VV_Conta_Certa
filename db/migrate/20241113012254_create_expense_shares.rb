class CreateExpenseShares < ActiveRecord::Migration[7.1]
  def change
    create_table :expense_shares do |t|
      t.decimal :share_amount, precision: 10, scale: 2, default: "0.0"
      t.string :category
      t.decimal :per_person_amount, precision: 10, scale: 2
      t.references :user, null: false, foreign_key: true
      t.references :expense, null: false, foreign_key: true

      t.timestamps
    end
  end
end
