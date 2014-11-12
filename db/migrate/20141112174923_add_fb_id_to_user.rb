class AddFbIdToUser < ActiveRecord::Migration
  def self.up  
    add_column :users, :fb_id, :integer
  end 
end
