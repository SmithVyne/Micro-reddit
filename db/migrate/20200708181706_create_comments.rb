class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end

    change_table :comments do |t|
      t.references :user, null: false, foreign_key: true
    end
  end
end
