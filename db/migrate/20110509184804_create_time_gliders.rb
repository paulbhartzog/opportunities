class CreateTimeGliders < ActiveRecord::Migration
  def self.up
    create_table :time_gliders do |t|
      t.integer :tg_id
      t.string :title
      t.text :description
      t.date :focus_date
      t.integer :initial_zoom
      t.string :events_url
      t.text :events
      t.text :legend

      t.timestamps
    end
  end

  def self.down
    drop_table :time_gliders
  end
end
