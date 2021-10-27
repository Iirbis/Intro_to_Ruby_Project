class RemoveAuthorIdFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :author_id, :integer
  end
end
