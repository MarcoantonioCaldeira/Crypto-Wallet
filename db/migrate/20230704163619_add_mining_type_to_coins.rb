class AddMiningTypeToCoins < ActiveRecord::Migration[7.0]
  def change
    add_reference :coins, :mining_types, null: false, foreign_key: true
  end
end
