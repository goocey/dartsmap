class AddGmapsToDartsshops < ActiveRecord::Migration
  def change
    add_column :dartsshops, :gmaps, :boolean
  end
end
