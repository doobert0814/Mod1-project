class CreateUsers < ActiveRecord::Migration[5.2]
  

  def up
    create_table :users do |t|
      t.string :user_name
      t.integer :age
      t.string :identify
      t.string :neighborhood
      t.string :instrument
      t.string :about
    end
  end
end
