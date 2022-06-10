class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :company
      t.string :name, null: false
      t.string :email, null: false
      t.integer :tel
      t.text :message, null: false

      t.timestamps
    end
  end
end
