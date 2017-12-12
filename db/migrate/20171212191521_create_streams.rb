class CreateStreams < ActiveRecord::Migration[5.1]
  def change
    create_table :streams do |t|
      t.string :title
      t.text :desc
      t.string :location
      t.string :genre
      t.string :instrument

      t.timestamps
    end
  end
end
