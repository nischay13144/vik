class CreateCouriers < ActiveRecord::Migration
  def change
    create_table :couriers do |t|
      t.string :c_name
      t.string :p_name
      t.integer :abn
      t.integer :mob
      t.string :email
      t.string :c_type
      t.string :city
      t.string :comp_name
      t.string :date
      t.integer :landline
      t.integer :pin
      t.text :remarks

      t.timestamps null: false
    end
  end
end
