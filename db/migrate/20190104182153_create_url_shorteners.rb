class CreateUrlShorteners < ActiveRecord::Migration[5.2]
  def change
    create_table :url_shorteners do |t|
      t.string :original_url
      t.string :shorter_url
      t.decimal :visited

      t.timestamps
    end
  end
end
