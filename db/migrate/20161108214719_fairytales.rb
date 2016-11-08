class Fairytales < ActiveRecord::Migration[5.0]
  def change
    create_table :fairytales do |table|
      table.string :title
      table.string :author
      table.string :comments
      table.string :moral
    end
  end
end
