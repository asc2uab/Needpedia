class CreateRelatedContents < ActiveRecord::Migration[6.0]
  def change
    create_table :related_contents do |t|
      t.belongs_to :post
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
