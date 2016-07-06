class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :cover
      t.string :name

      t.timestamps null: false
    end
  end
end
