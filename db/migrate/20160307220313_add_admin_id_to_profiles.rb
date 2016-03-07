class AddAdminIdToProfiles < ActiveRecord::Migration
  def change
    add_reference :profiles, :admin, index: true, foreign_key: true
  end
end
