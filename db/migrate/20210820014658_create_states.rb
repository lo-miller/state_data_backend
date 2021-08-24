class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.integer :median_household_income
      t.float :percentage_unemployment
      t.float :percentage_metro
      t.float :percentage_degree

      t.timestamps
    end
  end
end
