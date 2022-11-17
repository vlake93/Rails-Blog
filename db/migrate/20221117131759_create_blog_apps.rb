class CreateBlogApps < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_apps do |t|
      t.string :title
      t.string :name
      t.string :about

      t.timestamps
    end
  end
end
