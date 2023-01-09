class CreateCampers < ActiveRecord::Migration[6.1]
  def change
    create_table :campers do |t|

      t.timestamps
      t.string :name, includes: true
      t.integer :age, numericality: {greater_than_or_equal_to: 8,less_than_or_equal_to: 18}, includes: true
     

    end
  end
end
