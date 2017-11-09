class AddForeignKeyToDoses < ActiveRecord::Migration[5.0]
  def change
    add_reference :doses, :ingredient, index: true
  end
end
