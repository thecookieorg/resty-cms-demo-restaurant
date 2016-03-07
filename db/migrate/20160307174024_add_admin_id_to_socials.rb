class AddAdminIdToSocials < ActiveRecord::Migration
  def change
    add_reference :socials, :admin, index: true, foreign_key: true
  end
end
