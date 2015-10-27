class CreateMainroads < ActiveRecord::Migration
  def change
    create_table :mainroads do |t|
      t.string :Kdo
      t.string :Kam
      t.string :Co
      t.decimal :Cena

      t.timestamps null: false
    end
  end
end
