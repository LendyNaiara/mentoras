class AddEmailToMentora < ActiveRecord::Migration[8.1]
  def change
    add_column :mentoras, :email, :string
  end
end
