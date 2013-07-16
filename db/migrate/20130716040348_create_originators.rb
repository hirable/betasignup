class CreateOriginators < ActiveRecord::Migration
  def change
    create_table :originators do |t|
      t.string :email

      t.timestamps
    end
  end
end
