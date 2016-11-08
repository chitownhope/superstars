class HappyPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :happy_places do |table|
      table.string :name
      table.string :lat
      table.string :lon
    end
  end
end
