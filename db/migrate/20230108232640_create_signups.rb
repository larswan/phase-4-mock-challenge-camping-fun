class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|

      t.timestamps
      t.integer :camper_id
      t.integer :activity_id
      t.integer :time, numericality: {greater_than_or_equal_to: 0,less_than_or_equal_to: 23}, includes: true
         
    end
  end
end
