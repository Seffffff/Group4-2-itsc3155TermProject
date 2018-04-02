class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :teacher
      t.string :grade

      t.timestamps
    end
  end
end
