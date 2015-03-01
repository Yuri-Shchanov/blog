class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.datetme :datetime

      t.timestamps
    end
  end
end
