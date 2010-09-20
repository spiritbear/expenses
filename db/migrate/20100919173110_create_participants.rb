class CreateParticipants < ActiveRecord::Migration
  def self.up
    create_table :participants do |t|
      t.belongs_to :expenses
      t.integer :user_id
      t.decimal :amount, :precision => 10, :scale => 2      
      t.timestamps
    end
  end

  def self.down
    drop_table :participants
  end
end
