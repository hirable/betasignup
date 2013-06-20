class AddIndexToEmailsInSignups < ActiveRecord::Migration
  def change
    add_index :signups, :email, unique: true
  end
end
