class AddSenderToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :sender, :string
  end
end
