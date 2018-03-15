class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :posts
      t.text :body
      t.timestamps
    end
  end
end
