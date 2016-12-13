# on the command line run rails generate migration add_user_id_to_pics user_id:integer:index
# this is going to add user id to pics schema so we know who the picture belong too

class AddUserIdToPics < ActiveRecord::Migration[5.0]
  def change
    add_column :pics, :user_id, :integer
    add_index :pics, :user_id
  end
end
