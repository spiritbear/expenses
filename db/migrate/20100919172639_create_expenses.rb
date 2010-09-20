class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.decimal :amount, :precision => 10, :scale => 2
      t.date :purchase_date
      t.string :description
      t.integer :user_id      
      t.integer :merchant_id      
      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
