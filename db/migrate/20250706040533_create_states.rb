class CreateStates < ActiveRecord::Migration[7.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :code
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
