class Votes < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
      t.integer :voter
      t.integer :value
      t.integer :shout
      t.integer :user

      t.timestamps
    end
  end
end
