class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :name, null: false
      t.integer :phone_number
      t.string :email
      t.text :content
      t.boolean :status
      t.timestamps null: false
    end
  end
end
