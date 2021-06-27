class AddSellerIdToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :seller_id, :integer
  end
end
