class SitesId < ActiveRecord::Migration[5.2]
  def up
    add_column(:profiles, :site_id, :integer)
  end
end
