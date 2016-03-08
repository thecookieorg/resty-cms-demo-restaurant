class AddFacebookUrlToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :facebook_url, :string
    add_column :profiles, :twitter_url, :string
    add_column :profiles, :instagram_url, :string
  end
end
