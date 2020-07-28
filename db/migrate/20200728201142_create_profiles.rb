class CreateProfiles < ActiveRecord::Migration[5.2]
  #def change
  #end

  def up
    create_table :profiles do |t|
      t.string :user_name
      t.integer :age
      t.string :identify
      t.string :neighborhood
      t.string :instrument
      t.string :about
    end
  end

end
