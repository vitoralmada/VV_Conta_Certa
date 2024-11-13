class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.string :name_expense
      t.string :description
      t.date :date
      t.decimal :amount, precision:10, scale: 2, default: "0.0"
      t.references :group, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
