class CreateCampers < ActiveRecord::Migration[6.1]
  def change
    create_table :campers do |t|

      t.timestamps
      t.string :name
      t.integer :age
     

    end
  end
end