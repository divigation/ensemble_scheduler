class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name
      t.timestamp :showtime
      t.integer :term_id

      t.timestamps
    end
  end
end
