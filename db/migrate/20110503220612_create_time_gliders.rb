class CreateTimeGliders < ActiveRecord::Migration
  def self.up
    create_table :time_gliders do |t|
      t.string :id
      t.string :title
      t.text :description
      t.string :focus_date
      t.integer :inital_zoom
      t.string :events_url
      t.text :legend

      t.timestamps
    end
  end

  def self.down
    drop_table :time_gliders
  end
end
