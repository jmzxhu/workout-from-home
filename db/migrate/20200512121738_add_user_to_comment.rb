class AddUserToComment < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :comments, :user, null: false
  end
end
