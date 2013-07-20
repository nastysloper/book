class CreateManuscripts < ActiveRecord::Migration
  def change
    create_table :manuscripts do |t|
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
