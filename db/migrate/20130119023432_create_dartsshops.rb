class CreateDartsshops < ActiveRecord::Migration
  def change
    create_table :dartsshops do |t|
      # ショップの情報
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
