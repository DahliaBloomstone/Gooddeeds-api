class CreateGooddeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :gooddeeds do |t|
      t.string :body
      t.string :name
      t.string :location 
      t.string :feeling
      t.datetime :day 
      t.timestamps
    end
  end
end
