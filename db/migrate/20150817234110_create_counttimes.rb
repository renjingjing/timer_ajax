class CreateCounttimes < ActiveRecord::Migration
  def change
    create_table :counttimes do |t|
      t.string :sec

      t.timestamps null: false
    end
  end
end
