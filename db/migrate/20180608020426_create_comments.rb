class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :post, foreign_key: true
      t.belongs_to :comment, foreign_key: true
      t.text :body
      t.string :owner
      t.boolean :notify_reply

      t.timestamps
    end
  end
end
