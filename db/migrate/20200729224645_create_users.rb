class CreateUsers < ActiveRecord::Migration[5.2]
  

  def up
    create_table :users do |t|
      t.string :name
      t.string :password
    end
  end
end
