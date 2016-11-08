class Superstars < ActiveRecord::Migration[5.0]
  def change
    create_table :superstars do |table|
      table.string :name
      table.string :talent
      table.string :outfit
    end
  end
end
