class CreateRosters < ActiveRecord::Migration[5.1]
  def change
    create_table :rosters do |t|
      t.string :rosterName

      t.timestamps
    end
  end
end
