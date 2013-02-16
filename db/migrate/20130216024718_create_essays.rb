class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.text :copy
      t.integer :good_count
      t.integer :bad_count

      t.timestamps
    end
  end
end
