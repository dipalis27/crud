class AddPriceToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :price, :integer
    add_column :books, :author_name, :string
  end
end
