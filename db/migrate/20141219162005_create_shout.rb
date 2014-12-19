class CreateShout < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :text
      t.string :name
      t.string :twitter
      t.string :color
      t.boolean :private
    end
  end
end
