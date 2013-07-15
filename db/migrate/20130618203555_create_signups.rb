class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string  :email
      t.integer :candidate
      t.integer :referrer_insider
      t.integer :referrer_peer
      t.integer :hiring_manager
      t.integer :internal_recruiter
      t.integer :thirdparty_recruiter

      t.timestamps
    end
  end
end
