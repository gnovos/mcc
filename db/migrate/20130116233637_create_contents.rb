class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.string :context
      t.text :content
      t.string :version

      t.timestamps
    end
  end
end
