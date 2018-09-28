class CreateApimaps < ActiveRecord::Migration[5.1]
  def change
    create_table :apimaps do |t|
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
