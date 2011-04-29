class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string    :title
      t.string    :subtitle
      t.text      :description
      t.string    :image
      t.decimal   :price, :precision => 8, :scale => 2
      t.integer   :page_num
      t.string    :author
      t.string    :publisher
      t.datetime  :publish_date

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end

