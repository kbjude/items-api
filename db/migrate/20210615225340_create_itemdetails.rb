class CreateItemdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :itemdetails do |t|
      t.string :name
      t.string :description
      t.datetime :starttime
      t.datetime :endtime
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
