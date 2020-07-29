class CreateSite < ActiveRecord::Migration[5.2]
  def up
    create_table :sites do |t|
      t.string :name
      t.string :about
    end
  end

  def up
    add_column(:profiles, :sites_id, :integer)
  end
end
