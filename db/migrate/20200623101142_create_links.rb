class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|

      t.string :short_id, unique: true, index: true,null: false
      t.string :long_id, unique:true, index: true, null: false

      t.timestamps
    end
  end
end
