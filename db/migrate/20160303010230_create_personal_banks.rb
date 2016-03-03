class CreatePersonalBanks < ActiveRecord::Migration
  def change
    create_table :personal_banks do |t|
      t.decimal :amount
      t.string :exhanges
      t.text :description

      t.timestamps null: false
    end
  end
end
