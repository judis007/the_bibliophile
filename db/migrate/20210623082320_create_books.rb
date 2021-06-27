class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :language
      t.string :publisher
      t.date :date_of_publication
      t.string :isbn_10
      t.text :description
      t.decimal :amount

      t.timestamps
    end
  end
end
