class AddIndexToEmailsInSignups < ActiveRecord::Migration
  def change
    add_index :signups, :email
  end
end
