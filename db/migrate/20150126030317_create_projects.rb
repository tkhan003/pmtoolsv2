class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body

      t.references :user, index: true 

      t.timestamps null: false
    end
  end
end
