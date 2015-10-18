class CreateCours < ActiveRecord::Migration
  def change
    create_table :cours do |t|
      t.string :c_name
      t.string :p_name
      t.string :abn
      t.string :mob
      t.string :email
      t.string :c_type
      t.string :country
      t.string :state
      t.string :city
      t.string :comp_name
      t.string :landline
      t.string :remarks
      t.string :pin
      t.string :trans_date
      t.string :trans_status
      t.string :sms_reply
      t.string :delivery_date
      t.string :web_confirm

      t.timestamps null: false
    end
  end
end
