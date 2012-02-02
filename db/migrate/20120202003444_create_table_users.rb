class CreateTableUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :address
      t.boolean :available

      t.timestamps
    end    
  end

  def down
    drop_table :users
  end
end
