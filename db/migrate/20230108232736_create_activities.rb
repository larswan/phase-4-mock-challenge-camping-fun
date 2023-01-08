class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|

      t.timestamps
      t.string :name
      t.integer :difficulty
      t.integer :singup_id
      t.integer :camper_id
     

    end
  end
end
