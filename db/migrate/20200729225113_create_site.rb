class CreateSite < ActiveRecord::Migration[5.2]
  def up
    create_table :sites do |t|
      t.string :name
      t.string :about
    end
  end


end
