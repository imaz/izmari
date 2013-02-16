class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.references :idiom
      t.text :copy
      t.integer :good_count
      t.integer :bad_count

      t.timestamps
    end
    add_index :essays, :idiom_id
  end
end
