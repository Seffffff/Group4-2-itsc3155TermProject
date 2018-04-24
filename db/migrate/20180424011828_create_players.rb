class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    drop_table :players
    create_table :players do |t|
      t.string :name
      t.string :grade
      t.string :teacher
      t.integer :rank
      t.string :wins
      t.string :losses
      t.references :roster, foreign_key: true

      t.timestamps
    end
  end
end
