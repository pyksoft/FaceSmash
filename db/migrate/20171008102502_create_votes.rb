class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :winner_id
      t.integer :loser_id

      t.timestamps
    end
  end
end
