class CreateIdioms < ActiveRecord::Migration
  def change
    create_table :idioms do |t|
      t.string :word
      t.text :description

      t.timestamps
    end
  end
end
