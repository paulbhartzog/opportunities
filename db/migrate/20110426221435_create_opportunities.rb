class CreateOpportunities < ActiveRecord::Migration
  def self.up
    create_table :opportunities do |t|
      t.integer :id
      t.string :title
      t.string :link
      t.text :description
      t.date :startdate
      t.date :enddate
      t.string :icon
      t.integer :importance

      t.timestamps
    end
  end

  def self.down
    drop_table :opportunities
  end
end
