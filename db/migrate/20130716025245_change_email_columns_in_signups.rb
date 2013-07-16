class ChangeEmailColumnsInSignups < ActiveRecord::Migration
  def up
    rename_column :signups, :email, :originator_email
    remove_column :signups, :originator
    remove_column :signups, :referrer
    remove_column :signups, :candidate
    add_column :signups, :referrer_email, :string
    add_column :signups, :candidate_email, :string
    remove_index :signups, :email
  end

  def down
  end
end
