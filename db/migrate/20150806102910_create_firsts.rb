class CreateFirsts < ActiveRecord::Migration
  def change
    create_table :firsts do |t|
      t.string :firstname
      t.string :lastname
      t.string :designation
      t.string :origin

      t.timestamps null: false
    end
  end
end
