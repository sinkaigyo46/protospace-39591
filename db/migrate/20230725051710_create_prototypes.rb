class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.references :user,       null: false,  foreign_key: true
      t.text :title,            null: false
      t.text :concept,          null: false
      t.text :catch_copy,       null: false
      t.timestamps
    end
  end
end
