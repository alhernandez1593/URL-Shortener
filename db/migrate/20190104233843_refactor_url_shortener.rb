class RefactorUrlShortener < ActiveRecord::Migration[5.2]
  def change
    change_column :url_shorteners, :visited, :integer
    add_column :url_shorteners, :title, :string
  end
end
