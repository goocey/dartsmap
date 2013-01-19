class ChangecolDartsshopName < ActiveRecord::Migration
  def up
    rename_column :dartsshops, :name, :shopname
  end

  def down
    rename_column :dartsshops, :shopname, :name
  end
end
