class AddUrlToDartsshops < ActiveRecord::Migration
  def change
    add_column :dartsshops, :url, :string
  end
end
