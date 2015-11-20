class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :content
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
