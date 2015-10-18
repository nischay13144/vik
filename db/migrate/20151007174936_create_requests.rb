class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :org
      t.text :email
      t.text :number
      t.text :interest
      t.text :message

      t.timestamps null: false
    end
  end
end
