class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :access_level, :default => 0
      #Ex:- :default =>''

      t.timestamps
    end
  end
end
