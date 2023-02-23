class CreateBookmarks < ActiveRecord::Migration[7.0]
  # This must be made last, as it references the two databases before it.
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
