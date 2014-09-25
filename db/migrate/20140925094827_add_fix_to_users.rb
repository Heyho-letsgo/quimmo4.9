class AddFixToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :travailleur, index: true
  end
end
