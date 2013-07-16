class CreateReferrers < ActiveRecord::Migration
  def change
    create_table :referrers do |t|
      t.string :email

      t.timestamps
    end
  end
end
