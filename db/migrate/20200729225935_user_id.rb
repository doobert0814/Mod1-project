class UserId < ActiveRecord::Migration[5.2]
  
  def up 
    add_column(:profiles, :user_id, :integer)
  end
end
