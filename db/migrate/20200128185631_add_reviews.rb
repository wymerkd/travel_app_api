class AddReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column(:author, :string)
      t.column(:content, :string)
      t.column(:rating, :integer)
      t.column(:city_name, :string)
      t.column(:country_name, :string)
    end
  end
end
