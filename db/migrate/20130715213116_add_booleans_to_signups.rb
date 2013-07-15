class AddBooleansToSignups < ActiveRecord::Migration
  def change
    add_column :signups, :originator, :boolean, default: false
    add_column :signups, :referrer, :boolean, default: false
    add_column :signups, :candidate, :boolean, default: false
  end
end
