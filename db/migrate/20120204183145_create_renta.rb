class CreateRenta < ActiveRecord::Migration
  def change
    create_table :renta do |t|

      t.integer :user_id
      t.integer :movie_id
      t.timestamps
    end
  end
end
