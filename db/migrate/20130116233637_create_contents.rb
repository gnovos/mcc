class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :region, default: 'full'
      t.string :name, null:false
      t.string :context, null:false
      t.text :content
      t.string :version

      t.timestamps
    end

    add_index :contents, [:name, :context, :version], :unique => true

  end
end
